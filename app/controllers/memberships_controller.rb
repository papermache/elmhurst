class MembershipsController < ApplicationController
  
  before_action :load_project
  def create
    Membership.create(:user_id => params[:user_id], :project_id=>params[:project_id])
    flash[:success] = "Project Member Added Successfully"
    redirect_to researchertDetail_path(id: @project.id)
  end
  
  private

  def load_project
    @project = Project.find_by(id: params[:project_id])
  end
  
end
