class HomeController < ApplicationController
  def index
   @recent_requests = Project.all
  end

end
