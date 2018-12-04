class AnnotationsController < ApplicationController
	
	def create
    binding.pry
	  @annotation = Annotation.new(annotation_params)
    
      @annotation.item_price_dup = params[:Item_Price]
      if @annotation.save!
        flash[:success] = "Request Submit Successfully"
        redirect_to root_path
      else
        flash[:error] = "Request Submit Unsuccessful"
        redirect_to Register_path
      end
	end

	

	private
	  def annotation_params
        params.permit(:Item_Name,:Project_Select,:Item_Price,:Merchant_Name,:Source,:Note)
      end
end
