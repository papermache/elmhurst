class FullfilRequestJob < ActiveJob::Base
  queue_as :default

  def perform
  	local_array1 = []
    @annotation = Annotation.where.not(item_price_dup: 0)
      if @annotation.present? 
        @annotation.each do |x|
    	  if x.Order == Date.today
    	  	x.update(item_price_dup: 0)
    		local_array1 << x.Item_Price
    		p "local array is #{local_array1}"
    		Graph.create!(graph_data: (local_array1.sum/local_array1.count.to_f).round(4))
    	  end
    	end
      end
  end
end
