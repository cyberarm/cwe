require 'test_helper'

class ProfilesTest < ActionController::IntegrationTest
 test "Users page with no users" do
  visit '/users'
   assert page.has_content?('There are no registered users around, its getting lonely')
 end
 
 test "Users page with users" do
  User.create!(:username => "cyber", :email => "cyber@example.com", :password => "secretword") 
  visit '/users'
   assert page.has_content?('Cyber')
   assert page.has_content?('Member Since')
 end
end
