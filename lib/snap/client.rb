module Snap
  # Encapsulates the configuration of each client before JIT before requests
  # are made. This allows us to use our configuration which won't have been
  # available until runtime, not load time.
  module Client
    def client
      base_uri Snap.config.endpoint
      basic_auth(Snap.config.username, Snap.config.password)
      self
    end
  end
end
