class ProfilesController < ApplicationController
  def index
   @users = User.all(:order => "created_at DESC")
  end

  def show
   @user = User.find(params[:id])
   @projects = Project.find_all_by_requester(@user.id, :order => "created_at DESC")
  end

end
