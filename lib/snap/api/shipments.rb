module Snap
  module Api
    # Interact with Snapfulfil's shipments endpoint.
    class Shipments
      include ::HTTParty
      extend Client

      def self.find(id:)
        client.get("/shipments/#{id}")
      end

      def self.destroy(id:)
        client.delete("/shipments/#{id}")
      end

      def self.create(options)
        shipment = Snap::Shipment.new(options)
        client.post('/shipments', body: shipment)
      end

      def self.model
        Snap::Shipment
      end
    end
  end
end
