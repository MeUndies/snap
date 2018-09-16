module Snap
  module Api
    # Interact with Snapfulfil's shipments endpoint.
    class Shipments
      include ::HTTParty
      extend Client

      def self.find(id:)
        client.get("/shipments/#{id}")
      end

      def self.create(options)
        shipment = Snap::Shipment.new(options)
        client.post('/shipments', body: shipment)
      end
    end
  end
end
