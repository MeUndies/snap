module Snap
  # Encapsulates the configuration of each client before JIT before requests
  # are made. This allows us to use our configuration which won't have been
  # available until runtime, not load time.
  module Client
    def client
      base_uri Snap.config.endpoint
      basic_auth(Snap.config.username, Snap.config.password)
      headers('Content-Type' => 'application/json')
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

    def put(*args, &block)
      wrap_response do
        super(*args, &block)
      end
    end

    def wrap_response
      httparty_response = yield
      snoop_for_errors(httparty_response)
      Snap::Response.new(httparty_response, model)
    end

    def snoop_for_errors(httparty_response)
      case httparty_response.parsed_response.class.to_s
        # Snap can return response bodies in many different formats. How we look
        # for and what errors can occur are dependent on that type. For example
        # 500's mostly return raw html as a string. Pages with lists are an
        # Array. Resource endpoints are typically Hash.
      when 'Hash'
        raise Api::OrderStageError, httparty_response if httparty_response.parsed_response.value? 'ORDER_STAGE'
      end
    end
  end
end
