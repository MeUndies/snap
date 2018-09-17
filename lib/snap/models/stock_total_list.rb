require 'delegate'

module Snap
  module Models
    # Hydrate an array of stock totals.
    class StockTotalList < SimpleDelegator
      def initialize(list)
        super(list.map { |item| StockTotal.new(item) })
      end
    end
  end
end
