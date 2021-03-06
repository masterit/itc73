class Web::SessionsController < Web::ApplicationController
  add_breadcrumb :index, :new_session_path
  def new
    title t('.pages_in_titles.authorization') 
    render :new
  end 
  def create
    @email = params[:session][:email]
    user = ::User.active.find_by_email(@email)
    if user && user.authenticate(params[:session][:password])
      reset_session
      sign_in(user)
      if user.admin?
        redirect_to admin_root_path
      else
        redirect_to root_path
      end
    else
      flash_error now: true 
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to action: :new
  end
end
