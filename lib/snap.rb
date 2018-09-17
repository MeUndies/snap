require 'active_model'
require 'hashie'
require 'httparty'

require 'snap/version'
require 'snap/client'
require 'snap/response'

require 'snap/api/stock_totals'
require 'snap/api/shipment_status'
require 'snap/api/shipments'

require 'snap/models/stock_total'
require 'snap/models/stock_total_list'
require 'snap/models/shipment_status'
require 'snap/models/shipment_line'
require 'snap/models/shipment'

# Top level module for the Snap gem.
module Snap
  include Models

  class << self
    attr_accessor :config
  end

  def self.configure
    self.config ||= Configuration.new
    yield(config)
  end

  # A simple configuration object to accept the required data to boot a client.
  class Configuration
    attr_accessor :endpoint, :username, :password
  end
end
