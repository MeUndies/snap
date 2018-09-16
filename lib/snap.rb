require 'hashie'
require 'httparty'

require 'snap/version'
require 'snap/client'

require 'snap/api/shipments'
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
