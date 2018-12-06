module Snap
  module Api
    # Interact with the stock totals endpoint.
    class StockTotals
      include HTTParty
      extend Client

      def self.index
        client.get('/stocktotals')
      end

      def self.find(sku:)
        client.get("/stocktotals/#{sku}")
      end

      def self.model
        Snap::StockTotalList
      end
    end
  end
end
