module Snap
  module Api
    # An order stage error occurs when you attempt to update a shipment that is
    # in a stage that does not allow updates.
    class OrderStageError < StandardError
    end
  end
end
