module Snap
  module Api
    # Interact with StockMovements.
    class StockMovements
      include ::HTTParty
      extend Client

      def self.find(id:)
        client.get("/stockmovements/#{id}")
      end

      def self.create(options)
        client.post('/stockmovements', body: options.to_json)
      end

      def self.model
        Hash
      end
    end
  end
end
