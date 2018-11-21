class SharesController < ApplicationController
	def buy
		@share_exist = Share.find_by_user_id(current_user.id)
		if @share_exist.present?
		 @share_exist.shares += params[:shares].to_f
		 @share_exist.investment_principal += params[:investment_principal].to_f
		 @share_exist.investment_principal_dup += params[:investment_principal].to_f
		 @share_exist.is_trade_open = true
		 # find_items_price(@share_exist.investment_principal_dup , @share_exist)
		 @share_exist.save!
		 flash[:success] = "Shares Buy Successfully"
		 redirect_to "/Investor"
		else
		  @share = Share.new(share_params)
		  @share.investment_principal_dup = params[:investment_principal] 
		  @share.user_id = current_user.id
		  @share_exist.is_trade_open = true
		  @share.save!
		  flash[:success] = "Shares Buy Successfully"
		  redirect_to "/Investor"
		end
	end

	def sell
	  @share_exist = Share.find_by_user_id(current_user.id)
	    if @share_exist.present?
	   	  if @share_exist.shares >= params[:share].to_f
	   	    @share_exist.shares -= params[:shares].to_f
		    @share_exist.investment_principal -= params[:investment_principal].to_f
		    @share_exist.investment_principal_dup -= params[:investment_principal].to_f
   		    @share_exist.is_trade_open = false
		    @share_exist.save!
		    flash[:success] = "Shares Sell Successfully"
		    redirect_to "/Investor"
		  else
		  	flash[:error] = "You don't have sufficient ammount of shares  to sell"
	   	    redirect_to "/Investor"
	   	  end
	    else
	      flash[:error] = "You don't have shares  to sell"
	   	  redirect_to "/Investor"
	    end
	end
    
   private
	  def share_params
	  	params.permit(:shares,:investment_principal)
	  end
end
