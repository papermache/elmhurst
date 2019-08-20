class AnnotationsController < ApplicationController

  before_action :load_project, only: [:create, :update, :destroy]
  before_action :get_annotation, only: [:edit, :update, :destroy]
	
  def create
    @annotation = Annotation.new(annotation_params.merge!({Project_Select: @project.title}))
    @annotation.date_status = params["date_status"]
    @annotation.date = params["date"].to_datetime
    @annotation.Item_Price = params[:Item_Price].to_f
    @annotation.item_price_dup = params[:Item_Price].to_f
    @annotation.annotation_creator_id = current_user.id
    
    if @annotation.save!
      flash[:success] = "Request Submit Successfully!"
      redirect_to researchertDetail_path(id: @project.id)
    else
      flash[:error] = "Request Submit Unsuccessful"
      redirect_to Register_path
    end
	end

  def show
    @annotation = Annotation.where(annotation_creator_id: current_user.id).paginate(:page => params[:page], :per_page => 5).order('created_at DESC')  rescue nil
    @member = Project.find_by(title: Annotation.find_by_id(params[:id]).Project_Select).members rescue nil
  end 
  
  
  def edit  
    @affilates = [] 
    Project.find_each do |project|
      @affilates << { title: project.title, id: project.id }
      if project.authors.last == current_user && current_user.researcher == true
        @affilates << { title: project.title, id: project.id }
      end
    end
  end
  
  def update
    if @annotation && @annotation.update(annotation_params.merge!({Project_Select: @project.title}))
      @annotation.Item_Price     =   params[:Item_Price].to_f
      @annotation.item_price_dup = params[:Item_Price].to_f
      @annotation.date = params["date"]
      flash[:success] = "Request Submit Successfully"
      redirect_to researchertDetail_path(id: @project.id)
    else
      flash[:error] = "Request Submit Unsuccessful"
      redirect_to researchertDetail_path(id: @project.id)
    end
  end
  
  
  def destroy
    if @annotation && @annotation.destroy
      flash[:success] = "Request Delete Successfully"
      redirect_to researchertDetail_path(id: @project.id)
    else
      flash[:success] = "Request Did Not Deleted. Try Again"
      redirect_to researchertDetail_path(id: @project.id)
    end
  end

  private

  def load_project
    @project = Project.find_by(id: params[:Project_Select])
    if @project.blank?
      flash[:error] = "Invalid Affiliate Id"
      redirect_to Register_path
    end
  end
  
  def annotation_params
    params.permit(:Item_Name, :Item_Price, :Merchant_Name, :Source, :Note)
  end
  
  def get_annotation
    @annotation = Annotation.find_by_id(params[:id])
  end
  
end
