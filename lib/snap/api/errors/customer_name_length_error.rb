module Snap
  module Api
    # A definition error occurs when you attempt to create a shipment
    # with a long customer name
    class CustomerNameLengthError < StandardError
    end
  end
end
