require 'test_helper'

class HomeTest < ActionController::IntegrationTest
 test "Homepage accessible" do
  visit '/'
   assert page.has_content?('CWE')
 end
end
