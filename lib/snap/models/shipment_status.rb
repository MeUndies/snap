module Snap
  module Models
    # A representation of a Shipment Status.
    class ShipmentStatus < Hashie::Dash
      include Hashie::Extensions::IndifferentAccess

      property :ShipmentId, required: true
      property :Status, required: true
    end
  end
end
