class AccountHistoriesController < ApplicationController

	def create
		@account_history = AccountHistory.new(account_history_params)
		if @account_history.save!
			flash[:success] = "Account history saved successfully."
			redirect_to accountHistory_path
		else
			flash[:error] = "Account history is not created."
			redirect_to accountHistory_path
		end
	end

	def deposit
	  @account_history = AccountHistory.find_by_id(params[:id])
	  if @account_history.present?
		  	@account_history.amount += params[:amount].to_f
		  	@account_history.account = params[:account]
		  	@account_history.save!
		  	flash[:success] = "Amount deposit successfully"
		  	redirect_to accounthistory_path
	  else
	  	flash[:error] = "Amount deposit unsuccessful"
		  redirect_to accounthistory_path
		end
	end

	def withdraw
	  @account_history = AccountHistory.find_by_id(params[:id])
	  if @account_history.present?
		  if @account_history.amount.present? && @account_history.amount >= params[:amount].to_f
		  	@account_history.amount -= params[:amount].to_f
		  	@account_history.account = params[:account]
		  	@account_history.save!
		  	flash[:success] = "Amount withdrawl successfully"
		  	redirect_to accounthistory_path
		  else
		  	flash[:error] = "You don't have sufficient amount for withdrawl"
		  	redirect_to accounthistory_path
		  end
		end
	end

	def pool
		@account_history = AccountHistory.where(id: params[:value].split(","))
		if @account_history.present?
			@account_history.each do |x|
				x.amount = params[:amount].to_f
				x.grant = params[:grant]
				x.update!(amount: x.amount,grant: x.grant)
			end
			flash[:success] = "Amount successfully pooled"
			redirect_to accounthistory_path
		else
			flash[:error] = "Amount pooled unsuccessful"
			redirect_to accounthistory_path
		end

	end

	def pool_amount
      @account_history = AccountHistory.where(id: params[:id].split(","))
	  @balance = 0.0
	    @account_history.each do |x|
          @balance += x.amount.to_f 
        end 
	end

	private
	def account_history_params
		params.permit(:grant,:date,:account,:market,:amount)
	end
end
