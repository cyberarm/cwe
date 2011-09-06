class HomeController < ApplicationController
  def index
   @recent_requests = Project.all(:order => "created_at DESC", :limit => "6")
  end

end
