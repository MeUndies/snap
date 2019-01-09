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
        client.get("/stocktotals?$filter=SKUId eq '#{sku}'")
      end

      def self.find!(sku:)
        response = find(sku: sku)
        raise Api::StockTotalNotFoundError, "No stock totals found for #{sku}" if response.empty?

        response
      end

      def self.model
        Snap::StockTotalList
      end
    end
  end
end
