module ProjectsHelper
	def project_description
		Project.find_by_id(params[:id]).description  rescue nil
	end

	def find_project_created_at
    Project.find_by_id(params[:id]).created_at.localtime rescue nil
	end

	def find_project_title
    Project.find_by_id(params[:id]).try(:title) rescue nil
  end

  def principal principal
    stocks = StockQuote::Stock.quote("aapl").as_json
    principal > stocks["latest_price"] ? (principal/stocks["latest_price"]) : principal == 0 ? (stocks["latest_price"]/1) : (stocks["latest_price"]/principal)
  end

  def dividend
    stocks = StockQuote::Stock.quote("aapl").as_json
    fa = Annotation.where(item_price_dup: 0).pluck(:item_price).compact.sum rescue 1
    grant = AccountHistory.all.pluck(:amount).compact.sum / AccountHistory.all.pluck(:amount).count.to_f rescue 1
    @dividend = ((stocks["latest_price"]/fa)/grant).round(4) 
    @dividend.nan? ?  0 : @dividend 
  end

  def profit_loss
    stocks = StockQuote::Stock.quote("aapl").as_json
    fa = Annotation.where(item_price_dup: 0).pluck(:item_price).compact.sum rescue 1
    invesment_principal = 
  end
end
