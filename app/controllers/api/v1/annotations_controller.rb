module Api
  module V1
    class AnnotationsController < ApplicationController
      respond_to :json

      def index
        local_array1 = []
        fulfilled_avg =[]
        @annotations = Annotation.where("item_price_dup != ? ", 0)

        if @annotations.present? 
          @annotations.each do |x|
            @share = Share.find_by("investment_principal_dup > ?", 0)
            investment_principal = @share.try(:investment_principal_dup)
            if @share.present?
              investment_principal = investment_principal - x.item_price_dup
              puts"ssssssssssssssssssssssssssssss----- here we are now", x.inspect
              
              #             
              local_array1 << x.Item_Price
              item_price = x.Item_Price
              item_name = x.Item_Name
              item_merchant = x.Merchant_Name
              item_user = User.find_by_id(x.annotation_creator_id).first_name + User.find_by_id(x.annotation_creator_id).last_name
              invoice = x.Note 
              temp_item_name = item_name.split('')
              i = 0
              temp_str = ''
              temp_item_name.each do |ch|
                if (temp_item_name[i] == temp_item_name[i].downcase && temp_item_name[i+1]==temp_item_name[i+1].upcase)
                  temp_str += ' '
                end
                temp_str += ch
                i+=1
                      
                if i>=temp_item_name.length-1
                  temp_str +=temp_item_name[i]
                  break
                end
              end
              item_name = temp_str
              calculate_annotions(x, local_array1, item_name, item_price, item_merchant, item_user, invoice)
              @share.update(investment_principal_dup: investment_principal)
                  
            elsif @share.present? && x.item_price_dup > investment_principal
              val = x.item_price_dup - investment_principal
              x.update(item_price_dup: val)
              @share.update(investment_principal_dup: 0)
            end
          end
        end
       
        @temp_graph = Graph.all.pluck(:graph_data,:created_at,:item_name,:item_price,:vendor,:user,:invoice) rescue nil

        @temp_graph.each do |x|
          @item_name = x[-2]

          temp_item_name = @item_name.split('')
          i=0
          temp_str = ''
          temp_item_name.each do |ch|
                    
            temp_str += ch

            if (temp_item_name[i] == temp_item_name[i].downcase && temp_item_name[i+1]==temp_item_name[i+1].upcase)
              #chars.insert(i+1,'@')
              temp_str += ' '
            end

            i+=1
                      
            if i>=temp_item_name.length-1
              temp_str +=temp_item_name[i]
              break
            end
          end
          # space added in array
          @item_name = temp_str
          x[-2] = @item_name           
        end
        # space added in name

            
        @graph = @temp_graph
        @graph.each_with_index do |val,index|
          local_array2={}
          arr =  @graph.take(index+1).last[1].to_i
          arr1 = @graph.take(index+1).last[2]
          arr2 = @graph.take(index+1).last[3].to_f
          arr3 = @graph.take(index+1).last[4]
          arr4 = @graph.take(index+1).last[5]
          arr5 = @graph.take(index+1).last[6]
          transpose = @graph.take(index+1).transpose.first
          local_array2[:x] = arr
          local_array2[:open] = transpose.first
          local_array2[:high] = transpose.max
          local_array2[:low] = transpose.min
          local_array2[:close] = transpose.last
          local_array2[:name] = arr1
          local_array2[:price] = arr2
          local_array2[:cat1] = arr3
          local_array2[:cat2] = arr4
          local_array2[:invoice] = arr5
          fulfilled_avg << local_array2
        end
        render json: {fulfilled_avg: fulfilled_avg}
        
      end
      
      private
      
      def calculate_annotions(annotation, local_array1, item_name, item_price, item_merchant, item_user, invoice)
        if annotation.date_status == 'order'
          if annotation.date.today? || annotation.date.past?
            annotation.update(item_price_dup: 0)
            Graph.create!(graph_data: (local_array1.sum/local_array1.count.to_f).round(4),
              item_name: item_name,item_price: item_price,
              vendor: item_merchant,user: item_user,invoice: invoice)
          end
        elsif annotation.date_status == 'delivery'
          annotation.update(item_price_dup: 0)
          Graph.create!(graph_data: (local_array1.sum/local_array1.count.to_f).round(4),
            item_name: item_name,item_price: item_price,
            vendor: item_merchant,user: item_user,invoice: invoice)
        elsif  annotation.date_status == "perpetuity"
          if annotation.date.today? || annotation.date.past?
            date =  annotation.date + 3.months
            annotation.update(date: date)
            Graph.create!(graph_data: (local_array1.sum/local_array1.count.to_f).round(4),
              item_name: item_name,item_price: item_price,
              vendor: item_merchant,user: item_user,invoice: invoice)
          end            
        end
      end
      
    end
  end
end
