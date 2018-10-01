module Snap
  module Api
    # Interact with the snap outbound endpoint.
    class Outbound
      include HTTParty
      extend Client

      def self.index(top: 1000)
        client.get('/snapoutbound', query: { '$top': top })
      end

      def self.acknowledge(id:)
        client.put("/snapoutbound/#{id}")
      end

      def self.model
        Snap::OutboundList
      end
    end
  end
end
