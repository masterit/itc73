module ApplicationHelper
  def user_state_label(user)
    cls = "label label-user-#{user.state_name}"
    content_tag(:span, user.human_state_name, { class: cls })
  end

end