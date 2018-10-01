module Snap
  module Models
    # A representation of an outbound event.
    class Outbound < Hashie::Trash
      include Hashie::Extensions::IndifferentAccess

      property :Host
      property :XDoc
      property :Transaction
      property :Key, transform_with: ->(v) { Hash[v.scan(/(\w+)="(.*?)"/)] }
      property :Batch
      property :DateCreated
      property :DateProcessed
      property :Stage
    end
  end
end
