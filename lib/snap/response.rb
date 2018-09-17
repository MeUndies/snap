require 'delegate'

module Snap
  # Wraps HTTParty response so we can provide some helpful methods.
  class Response < SimpleDelegator
    def initialize(response, model)
      @model = model
      super(response)
    end
    attr_reader :model

    def hydrate
      model.new(parsed_response)
    end
  end
end
