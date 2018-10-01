require 'delegate'

module Snap
  module Models
    # Hydrate an array of stock totals.
    class OutboundList < SimpleDelegator
      def initialize(list)
        super(list.map { |item| Outbound.new(item) })
      end
    end
  end
end
