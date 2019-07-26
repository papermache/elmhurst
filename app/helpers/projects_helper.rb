module ProjectsHelper
	def project_description
    Project.find_by_id(params[:id]).description.capitalize  rescue nil
	end

	def find_project_created_at
    Project.find_by_id(params[:id]).created_at.localtime rescue nil
	end

	def find_project_title
    Project.find_by_id(params[:id]).try(:title).capitalize rescue nil
  end

  # def principal principal
  #   stocks = StockQuote::Stock.quote("aapl").as_json
  #   principal > stocks["latest_price"] ? (principal/stocks["latest_price"]) : principal == 0 ? (stocks["latest_price"]/1) : (stocks["latest_price"]/principal)
  # end

  def open_trade_count
    @open_count = Share.where(is_trade_open: true).count
    @open_count.present? ? @open_count : 0
  end

  def close_trade_count
    @close_count = Share.where(is_trade_open: false).count
    @close_count.present? ? @close_count : 0
  end

  def total_trade_count
    @total_count = Share.all.count
    @total_count.present? ? @total_count : 0
  end

  def dividend grant
    begin
      stocks = StockQuote::Stock.quote("aapl").as_json
      fa = Annotation.where(item_price_dup: 0).pluck(:item_price).compact.sum rescue 1
      @dividend = (((stocks["latest_price"]/fa)/grant)*100).round(4)
      @dividend.nan? ?  0 : @dividend 
    rescue
    end
  end

  def profit_loss invesment_principal
    stocks = StockQuote::Stock.quote("aapl").as_json
    fa = Annotation.where(item_price_dup: 0).pluck(:item_price).compact.sum rescue 1
    @profit_loss = (((stocks["latest_price"]/fa)/invesment_principal)*100).round(4)
    @profit_loss.finite? ?  @profit_loss : 0
  end

  def find_project_creator
    puts"sssssssssssssssssssssssss", Project.find_by_id(params[:id]).authors.inspect
    if Project.find_by_id(params[:id]).authors
      Project.find_by_id(params[:id]).authors.last.first_name.capitalize + ' ' + Project.find_by_id(params[:id]).authors.last.last_name.capitalize
    end
  end
end
