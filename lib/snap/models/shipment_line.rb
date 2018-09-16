module Snap
  module Models
    # A representation of a single ShipmentLine.
    class ShipmentLine < Hashie::Dash
      include Hashie::Extensions::IndifferentAccess

      property :ShipmentId, required: true
      property :Line
      property :Level
      property :SKUId, required: true
      property :BizSKU
      property :LineOwner
      property :LineStockStatus
      property :QtyOrdered, required: true
      property :QtyRequired, required: true
      property :QtyAllocated
      property :QtyTasked
      property :UnitOfMeasure, required: true
      property :QtyPicked
      property :QtyShipped
      property :QtyDelivered
      property :QtyDueOut
      property :Price, required: true
      property :Discount
      property :TaxRate
      property :SOLineId
      property :ReturnReason
      property :QC
      property :Shortage
      property :Variance
      property :BOInd
      property :ConsignmentId
      property :PickGroupId
      property :SiteId
      property :Warehouse
      property :BizId
      property :OwnerId
      property :StockStatus
      property :DateShipment
      property :AttachmentInd
      property :SpecialConditionInd
      property :Stage
    end
  end
end
