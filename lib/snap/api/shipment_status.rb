module Snap
  module Api
    # Interact with Snapfulfil's shipment status endpoint.
    class ShipmentStatus
      include ::HTTParty
      extend Client

      def self.update(options)
        shipment_status = Snap::ShipmentStatus.new(options)
        client.put("/shipmentstatus/#{shipment_status.ShipmentId}", body: shipment_status)
      end
    end
  end
end
