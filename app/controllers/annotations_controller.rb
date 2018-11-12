class AnnotationsController < ApplicationController
	
	def create
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

	def deposit
	  @annotation = Annotation.find_by_id(params[:id])
	  if @annotation.present?
		  	@annotation.balance += params[:balance].to_f
		  	@annotation.save!
		  	flash[:success] = "Amount deposit successfully"
		  	redirect_to accounthistory_path
	  else
	  	flash[:error] = "Amount deposit unsuccessful"
		  redirect_to accounthistory_path
		end
	end

	def withdraw
		@annotation = Annotation.find_by_id(params[:id])
	  if @annotation.present?
		  if @annotation.balance.present? && @annotation.balance >= params[:balance].to_f
		  	@annotation.balance -= params[:balance].to_f
		  	@annotation.save!
		  	flash[:success] = "Amount withdrawl successfully"
		  	redirect_to accounthistory_path
		  else
		  	flash[:error] = "You don't have sufficient amount for withdrawl"
		  	redirect_to accounthistory_path
		  end
		end
	end

	def pool
		@annotation = Annotation.where(id: params[:value].split(","))
		if @annotation.present?
			@annotation.each do |x|
				x.balance += params[:balance].to_f
				x.update!(balance: x.balance)
			end
			flash[:success] = "Amount successfully pooled"
			redirect_to accounthistory_path
		else
			flash[:error] = "Amount pooled unsuccessful"
			redirect_to accounthistory_path
		end

	end

	private
	  def annotation_params
        params.permit(:Item_Name,:Project_Select,:Item_Price,:Merchant_Name,:Source,:Note,:Order,:Delivery)
      end
end
