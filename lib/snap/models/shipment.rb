module Snap
  module Models
    # A representation of a Snap Shipment object.
    class Shipment < Hashie::Dash
      include Hashie::Extensions::IndifferentAccess
      include Hashie::Extensions::Dash::Coercion
      include ActiveModel::Validations

      def initialize(*args)
        super(*args)
        validate!
      end

      # Fields added during last Snapfulfil upgrade.
      property :ASNInd
      property :ASNNumber
      property :ActualWeight
      property :BOL
      property :CarrierScac
      property :CustomerOrder
      property :DC
      property :DateInvoice
      property :MasterBOL
      property :Store
      property :Tax
      property :Variance

      property :ShipmentId, required: true
      property :BizId
      property :BizSalesOrder
      property :Status
      property :OrderType
      property :OrderClass
      property :CustomerId, required: true
      property :BizCustomerId
      property :CustomerGroup
      property :CustomerName
      property :ShippingAddressId
      property :InvoiceAddressId
      property :Site
      property :Warehouse
      property :OwnerId
      property :StockStatus
      property :SalesOrder
      property :Prime
      property :PriorityAllocation
      property :PriorityDespatch
      property :CustomerRef
      property :ConsignmentId
      property :PickGroupId
      property :ASNNumber
      property :DNoteNumber
      property :InvoiceNumber
      property :ManifestNumber
      property :POD
      property :ShippingMethod
      property :Region
      property :CarrierId
      property :CarrierTrackingNumber
      property :Route
      property :LoadId
      property :LoadSequence
      property :PackStation
      property :ShippingLane
      property :ReturnReason
      property :QC
      property :Lines
      property :LineQty
      property :StUQty
      property :Volume
      property :Weight
      property :ActualWeight
      property :TaskCountNew
      property :TaskCountCurrent
      property :TaskCountActioned
      property :TimeToPick
      property :TimeToPack
      property :TimeToCheck
      property :TimeToLoad
      property :TimeOther
      property :TimeToDeliver
      property :InvoiceInd
      property :Currency
      property :LineValue
      property :Discount
      property :Packing
      property :Freight
      property :Insurance
      property :Charges
      property :Allowances
      property :Tax
      property :InvoiceValue
      property :ShortageCode
      property :Variance
      property :CutOffInd
      property :Supervisor
      property :Reason
      property :DateCreated
      property :DateSuspended
      property :DateClosed
      property :DateDueOut, required: true
      property :DateShipment
      property :DateDelivery
      property :DateInvoice
      property :ASNInd
      property :OverdueInd
      property :Stage
      property :MaintInd
      property :ShipmentLines, coerce: Array[Models::ShipmentLine]
      property :ShipAddress
      property :ShipContacts
      property :ShipmentDespatch

      validates :CustomerName, length: { maximum: 30 }, strict: Api::CustomerNameLengthError
    end
  end
end
