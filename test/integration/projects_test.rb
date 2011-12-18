require 'test_helper'

class ProjectsTest < ActionController::IntegrationTest
 test "Creating a Project_Help request" do
  User.create!(:username => "cyber", :email => "cyber@example.com", :password => "secretword") 
  visit '/users/login'
   fill_in("Username", :with => "cyber")
   fill_in("Password", :with => "secretword")
   click_button("Login")
   assert page.has_content?("Signed in successfully.")
  visit '/projects'
      click_link("Request help on my Project")
   fill_in("project_title", :with => "Blender")
   fill_in("project_app", :with => "Blender the 3D editing suite.")
   fill_in("project_help", :with => "Something")
   fill_in("project_site", :with => "http://blender.org")
   click_button("Submit Request")
   assert page.has_content?("Project was successfully created.")
 end
 test "Editing a Project_Help request" do
  User.create!(:username => "cyber", :email => "cyber@example.com", :password => "secretword")
  visit '/users/login'
   fill_in("Username", :with => "cyber")
   fill_in("Password", :with => "secretword")
   click_button("Login")
   assert page.has_content?("Signed in successfully.")
  visit '/projects'
   click_link("Request help on my Project")
   fill_in("project_title", :with => "Blender")
   fill_in("project_app", :with => "Blender the 3D editing suite.")
   fill_in("project_help", :with => "Something")
   fill_in("project_site", :with => "http://blender.org")
   click_button("Submit Request")
   assert page.has_content?("Project was successfully created.")
  visit '/projects'
   click_link("Blender")
   click_link("Edit")
   fill_in("project_app", :with => "Blender the open source (GPL licensed) 3D editing suite.")
   click_button("Update Request")
   assert page.has_content?("Project was successfully updated.")
 end
end
