class UsersController < ApplicationController

  def update
 
  end

  def show
    @user = User.find(params[:id])
  end
  
  def search
    @users = User.where(email: params[:email], investor: false)
    @project_id = params[:project_id]
  end
  
  def assign_project
    Membership.create(:user_id => params[:user_id], :project_id=>params[:project_id] )
    
  end
  
end
