module ApplicationHelper
	def item_price_avg
	  stocks = StockQuote::Stock.quote("aapl").as_json
      @avg = (Annotation.where.not(item_price_dup: 0).pluck(:Item_Price).compact.sum / Annotation.where.not(item_price_dup: 0).pluck(:Item_Price).compact.count) rescue 1
	  @avg > stocks["latest_price"] ? @avg/stocks["latest_price"] : stocks["latest_price"]/@avg  
	end

	def item_price_sum
	  @sum = Annotation.where(Project_Select: Project.find_by_id(params[:id]).title).pluck(:Item_Price).compact.sum  rescue nil
	  @sum ? @sum : 0
	end
    
    def purchasing_power
      @purchasing_power = (Share.all.pluck(:investment_principal).compact.sum/Share.all.count.to_f).round(4) rescue nil
      @purchasing_power.nan? ?  0 : @purchasing_power 
    end
	
	def current_btc_price
      response= StockQuote::Stock.quote("aapl").as_json 
      @current_btc_price_usd =  response["latest_price"] 
    end
    
end
