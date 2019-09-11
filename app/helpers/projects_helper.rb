module ProjectsHelper
	def project_description
    Project.find_by_id(params[:id]).description.capitalize  rescue nil
	end

	def find_project_created_at
    Project.find_by_id(params[:id]).created_at.localtime rescue nil
	end

	def find_project_title
    Project.find_by_id(params[:id]).try(:title) rescue nil
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

  def dividend (grant, client)
    begin
      stocks = client.quote("aapl")
      fa = Annotation.where(item_price_dup: 0).pluck(:item_price).compact.sum rescue 1
      @dividend = (((stocks.latest_price/fa)/grant)*100).round(4)
      @dividend.nan? ?  0 : @dividend 
    rescue
      @dividend  = 0
    end
  end

  def profit_loss(invesment_principal, client)
    begin
      stocks = client.quote("aapl")
      fa = Annotation.where(item_price_dup: 0).pluck(:item_price).compact.sum rescue 1
      @profit_loss = (((stocks.latest_price/fa)/invesment_principal)*100).round(4)
      @profit_loss.finite? ?  @profit_loss : 0
    rescue
      @profit_loss = 0
    end
  end

  def find_project_creator
    if Project.find_by_id(params[:id]).authors
      Project.find_by_id(params[:id]).authors.last.first_name.capitalize + ' ' + Project.find_by_id(params[:id]).authors.last.last_name.capitalize
    end
  end
  
  
  def account_dividend(account)

    if account
      amount = account.amount 
      @client = IEX::Api::Client.new(publishable_token: 'sk_b9257341ee8e443f9e0781c7f466db4f')
      dividend(account.amount, @client)
      if @dividend > 0
        per = @dividend * amount
        amount = per/100
      end
      
      if  Date.today == account.date.to_date
        if account.durations == 'quarterly'
          date = Date.today + 3.months
        else
          date = Date.today + 1.year
        end
        
        
        account.update(date: date, dividend: @dividend)
      else
        account.update(dividend: @dividend)
      end
    end
    return account.try(:dividend)
  end
  
  def stock_cal_price(client)
    begin
      stocks = client.quote("aapl")
      fa = Annotation.where(item_price_dup: 0).pluck(:item_price).compact.sum rescue 1
      @total_price = stocks.latest_price/fa
    rescue
      @total_price = 0
    end
    return @total_price
  end
  
  def total_profit(trade, client)
    pl =  profit_loss(trade.investment_principal, client)
    invest =  trade.investment_principal.to_f
    total =  invest + (invest * pl)
    if total > 0
      total = total.round(2)
    end
    return total
  end
  
  def total_gain(account)
    total = account.dividend
    if account.amount > 0
      total = (account.amount * 2) + total
    end
    return total
  end
  
  
end
