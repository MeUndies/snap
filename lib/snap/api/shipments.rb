module Snap
  module Api
    # Interact with Snapfulfil's shipments endpoint.
    class Shipments
      include ::HTTParty
      extend Client

      def self.find(id:)
        client.get("/shipments/#{id}")
      end
    end
  end
end
