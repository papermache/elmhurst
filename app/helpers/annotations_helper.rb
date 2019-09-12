module AnnotationsHelper
	def find_annotation_name
	  @annotation_name = Annotation.find_by_id(params[:id]).Item_Name.capitalize  rescue nil
	end
    
    def find_annotation_creator
	  @annotation_craetor = User.find_by_id(Annotation.find_by_id(params[:id]).annotation_creator_id).first_name.capitalize + ' ' +
	                User.find_by_id(Annotation.find_by_id(params[:id]).annotation_creator_id).last_name.capitalize  rescue nil
	end
    
    def find_annotation_created_at
	  @annotation_created_at = Annotation.find_by_id(params[:id]).created_at.localtime rescue nil 
	end

	def annotation_item_price_sum
       @annotation_price = Annotation.where(Project_Select: "fghgdgjgjfgjgj").where(annotation_creator_id: current_user.id).pluck(:Item_Price).compact.sum.round(4)
       @annotation_price.present?  ? @annotation_price : 0
	end

	def annotation_project_description
		@annotation_project=Annotation.find_by_id(params[:id]).Project_Select.capitalize
	end

	def find_Merchant_Name
		@annotation_project=Annotation.find_by_id(params[:id]).Merchant_Name.capitalize
	end

	def find_Affiliate_Name
		# affiliate name is stored as project_select
		@annotation_project = Annotation.find_by_id(params[:id]).Project_Select.capitalize
  end

  def get_selected(annotation)
    @project = Project.find_by_title(annotation.Project_Select)
    return @project.id
  end
  
end
