FactoryGirl.define do
  sequence :vkontakte_auth_hash do
    {
      :provider => 'vkontakte',
      :uid => '1234567',
      :info => {
        :nickname => 'jbloggs',
        :email => 'joe@bloggs.com',
        :name => 'Joe Bloggs',
        :first_name => 'Joe',
        :last_name => 'Bloggs',
        :location => 'Palo Alto, California',
        :verified => true
      },
      :credentials => {
        :token => 'ABCDEF...', # OAuth 2.0 access_token, which you may wish to store
        :expires_at => 1321747205, # when the access token expires (it always will)
        :expires => true # this will always be true
      },
      :extra => {
        :raw_info => {
          :id => '1234567',
          :name => 'Joe Bloggs',
          :first_name => 'Joe',
          :last_name => 'Bloggs',
          :username => 'jbloggs',
          :location => { :id => '123456789', :name => 'Palo Alto, California' },
          :gender => 'male',
          :email => 'joe@bloggs.com',
          :timezone => -8,
          :locale => 'en_US',
          :verified => true,
          :updated_time => '2011-11-11T06:21:03+0000'
        }
      }
    }
  end
end
