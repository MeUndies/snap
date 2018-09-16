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

    def get(*args, &block)
      wrap_response do
        super(*args, &block)
      end
    end

    def post(*args, &block)
      wrap_response do
        super(*args, &block)
      end
    end

    def delete(*args, &block)
      wrap_response do
        super(*args, &block)
      end
    end

    def wrap_response
      Snap::Response.new(yield, model)
    end
  end
end
