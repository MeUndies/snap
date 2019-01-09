module Snap
  module Api
    # An stock total not found occurs when the sku doesn't exits in snap
    class StockTotalNotFoundError < StandardError
    end
  end
end
