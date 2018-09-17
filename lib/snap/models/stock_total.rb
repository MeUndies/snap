module Snap
  module Models
    # A representation of a single stock total.
    class StockTotal < Hashie::Dash
      include Hashie::Extensions::IndifferentAccess

      property :SKUId
      property :LineID
      property :State
      property :Site
      property :Facility
      property :BizId
      property :OwnerId
      property :Status
      property :Unit
      property :Qty
      property :QtyAllocated
      property :QtyAssigned
      property :QtyOrderIn
      property :QtyDueIn
      property :QtyOrderOut
      property :QtyDueOut
      property :StockLevelIndicator
      property :DateLastMoved
      property :Product
    end
  end
end
