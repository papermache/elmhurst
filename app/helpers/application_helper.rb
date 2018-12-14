module ApplicationHelper
	def item_price_avg
	  stocks = StockQuote::Stock.quote("aapl").as_json
      @avg = (Annotation.where.not(item_price_dup: 0).pluck(:Item_Price).compact.sum / Annotation.where.not(item_price_dup: 0).pluck(:Item_Price).compact.count) rescue 1
	  @avg > stocks["latest_price"] ? (@avg/stocks["latest_price"]).round(4) : (stocks["latest_price"]/@avg).round(4)  
	end

	def item_price_sum
	  @sum = Annotation.where(Project_Select: Project.find_by_id(params[:id]).title).pluck(:Item_Price).compact.sum  rescue nil
	  @sum ? @sum : 0
	end
    
    def purchasing_power
      @purchasing_power = ((Share.where(is_trade_open: true).pluck(:investment_principal).compact.sum + AccountHistory.where(user_id: current_user.id).pluck(:amount).compact.sum)/(Share.where(is_trade_open: true).pluck(:investment_principal).count + AccountHistory.where(user_id: current_user.id).pluck(:amount).count).to_f).round(4) rescue nil
      @purchasing_power.nan? ?  0 : @purchasing_power 
    end
	
	def current_btc_price
      response= StockQuote::Stock.quote("aapl").as_json 
      @current_btc_price_usd =  response["latest_price"] 
    end
    
end


