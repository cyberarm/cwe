require 'test_helper'

class UsersTest < ActionController::IntegrationTest
 test "User sign up" do
  visit '/users/login'
   click_link("Sign up")
   fill_in("Username", :with => "cyber")
   fill_in("Email", :with => "cyber@example.com")
   fill_in("Password", :with => "the word is secret")
   fill_in("Password confirmation", :with => "the word is secret")
   click_button("Sign up")
   assert page.has_content?("Welcome! You have signed up successfully.")
 end
 test "User Login" do
  User.create!(:username => "cyber", :email => "cyber@test-rails-app.com", :password => "secretword") 
  visit '/users/login'
   fill_in("Username", :with => "cyber")
   fill_in("Password", :with => "secretword")
   click_button("Login")
   assert page.has_content?("Signed in successfully.")
 end
end
