module Api
  module V1
    class AnnotationsController < ApplicationController
      respond_to :json

      def index
        local_array1 = []
        fulfilled_avg =[]
        @annotation = Annotation.where.not(item_price_dup: 0)
          if @annotation.present? 
    	      @annotation.each do |x|
    	        if x.Order.to_date == Date.today
    	          @share = Share.find_by("investment_principal_dup > ?", 0)
    	          investment_principal = @share.try(:investment_principal_dup)
    	            if @share.present? &&  @share.investment_principal_dup >= x.item_price_dup 
    	              investment_principal = investment_principal - x.item_price_dup
    		            x.update(item_price_dup: 0)
    		            local_array1 << x.Item_Price
    		            p "local array is #{local_array1}"
    	              @share.update(investment_principal_dup: investment_principal)
    		           Graph.create!(graph_data: (local_array1.sum/local_array1.count.to_f).round(4))
    		          elsif @share.present? && x.item_price_dup > investment_principal
    		            val = x.item_price_dup - investment_principal
    		            x.update(item_price_dup: val)
    	              @share.update(investment_principal_dup: 0)
    		          end
    		      end
    	      end
          end
            @graph = Graph.all.pluck(:graph_data,:created_at) rescue nil
            @graph.each_with_index do |val,index|
              local_array2=[]
               arr = @graph.take(index+1).last[1].to_i
               transpose = @graph.take(index+1).transpose.first
               local_array2 << arr
               local_array2 << transpose.first
               local_array2 << transpose.max
               local_array2 << transpose.min
               local_array2 << transpose.last
               fulfilled_avg << local_array2
            end
           p "Fullfilled avg is===> #{fulfilled_avg}"
           render json: {fulfilled_avg: fulfilled_avg}
       end
    end
  end
end
