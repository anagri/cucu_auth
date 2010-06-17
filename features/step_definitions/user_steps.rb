Given /^a user "([^\"]*)" exists with "([^\"]*)" password$/ do |username, password|
  @user = User.create!(:username => username, :email => "#{username}@email.com", :password => password, :password_confirmation => password)
end
When /^is logged in to the application$/ do
  steps %Q{
  And I go to the login page
  And fill in "user_session_username" with "#{@user.username}"
  And fill in "user_session_password" with "#{@user.password}"
  And press "Login"

  Then I should be on the root page
  And should see "Successfully logged in"
  And should see "Logout"
}
end