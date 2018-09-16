require 'snap/version'

# Top level module for the Snap gem.
module Snap
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
