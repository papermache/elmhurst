module Api
  module V1
    class GraphsController < ApplicationController
      respond_to :json

      def index

        # Group by nearest 15 minutes for display as candlestick
        grouped = Graph.all.group_by do |x|
          rounded_time = round_to_minutes(x.created_at, 15)
          rounded_time.strftime(minutes_strf)
        end

        res = grouped.map do |time, graphs|
          {
            x: DateTime.strptime(time, minutes_strf).to_i,
            open: open(graphs),
            high: high(graphs),
            low: low(graphs),
            close: close(graphs),
            items: graphs
          }
        end

        render json: res
      end

private

      def minutes_strf
        "%Y-%m-%d %H:%M"
      end

      def round_to_minutes(t, minutes)
        rounded = Time.at((t.to_time.to_i / (minutes * 60)).round * (minutes * 60))
        t.is_a?(DateTime) ? rounded.to_datetime : rounded.utc
      end

      def open(graphs)
        graphs.sort_by(&:created_at).first.item_price
      end

      def close(graphs)
        graphs.map { |g| g[:item_price] }.sum / graphs.length
      end

      def high(graphs)
        graphs = graphs.sort_by(&:created_at)
        high = graphs.first.item_price
        graphs.each_with_index do |graph, i|
          rolling_average_price = rolling_average_price_for_index(graphs, i)
          high = rolling_average_price > high ? rolling_average_price : high
        end
        high
      end

      def low(graphs)
        graphs = graphs.sort_by(&:created_at)
        low = graphs.first.item_price
        graphs.each_with_index do |graph, i|
          rolling_average_price = rolling_average_price_for_index(graphs, i)
          low = rolling_average_price < low ? rolling_average_price : low
        end
        low
      end

      def rolling_average_price_for_index(graphs, i)
        graphs_seen = graphs[0..i + 1]
        graphs_seen.map { |g| g[:item_price] }.sum / graphs_seen.length
      end
    end
  end
end
