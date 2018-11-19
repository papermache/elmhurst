module ApplicationHelper
	def item_price_avg
	  stocks = StockQuote::Stock.quote("aapl").as_json
	  @avg = (Annotation.where.not(item_price_dup: 0).pluck(:Item_Price).compact.sum / Annotation.where.not(item_price_dup: 0).pluck(:Item_Price).compact.count) rescue nil
	  @avg > stocks["latest_price"] ? @avg/stocks["latest_price"] : stocks["latest_price"]/@avg  rescue nil
	end

	def item_price_sum
	  @sum = Annotation.where(Project_Select: Project.find_by_id(params[:id]).title).pluck(:Item_Price).compact.sum  rescue nil
	  @sum ? @sum : 0
	end

	def purchasing_power
	  @deposit_balance = (Annotation.where.not(balance: 0.0).pluck(:balance).compact.sum/Annotation.where.not(balance: 0.0).pluck(:balance).compact.sum) rescue nil
	  @purchasing_power = (((Annotation.where.not(item_price_dup: 0).pluck(:Item_Price).compact.sum / 
	  	                   Annotation.where.not(item_price_dup: 0).pluck(:Item_Price).compact.count)*
	                      Share.find_by_user_id(current_user.id).shares) + @deposit_balance.to_f).round(4)  rescue nil
	  @purchasing_power ? @purchasing_power : 0
	end

	def current_btc_price
      response= StockQuote::Stock.quote("aapl").as_json rescue nil
      @current_btc_price_usd =  response["latest_price"] rescue nil
    end
    
    # def purchasing_power
    #   @purchasing_power = Share.all.pluck(:investment_principal)
    # end
    
    # def fulfilled_req_avg
    #   @fullfill_req_avg = Share.where("created_at BETWEEN ? and ?",DateTime.now,DateTime.now+1).pluck(:investment_principal).compact.sum - (Annotation.all.pluck(:Item_Price).compact.sum / Annotation.all.pluck(:Item_Price).compact.count) rescue nil
    # end
end
