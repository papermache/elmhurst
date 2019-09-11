class AccountHistoriesController < ApplicationController

	def create
		@account_history = AccountHistory.new(account_history_params)
		@account_history.user_id = current_user.id
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
		  	@account_history.user_id = current_user.id
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
		  	@account_history.user_id = current_user.id
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
		  @account_history.first.amount = params[:amount].to_f
		  @account_history.first.grant = params[:grant]
		  @account_history.first.user_id = current_user.id
		  @account_history.first.save!
          for i in 1..@account_history.length-1
            @account_history[i].delete
          end
			flash[:success] = "Amount successfully pooled"
			redirect_to accounthistory_path
		else
			flash[:success] = "Amount successfully pooled"
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
		params.permit(:grant,:date,:account,:market,:amount, :durations)
	end
end
