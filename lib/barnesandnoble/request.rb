require "excon"
require "barnesandnoble/response"

  class Request
      @app_id = app_id
    end

    def get(method, query, excon_options = {})
      query['AppId'] = @app_id

      Response.new(connection(method, query).get(excon_options))
    end

    private

    def hash_to_query(hash)
      '?' + URI.encode(hash.map{|k,v| "#{k}=#{v}"}.join("&"))
    end

    def connection(request_type, query)
      Excon.new("http://services.barnesandnoble.com/v03_00/#{request_type}#{hash_to_query(query)}", expects: 200)
    end
  end
end
