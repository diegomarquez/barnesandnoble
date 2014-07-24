require "excon"
require "barnesandnoble/response"

module Barnesandnoble
  class Request
    def initialize(app_id = ENV["BN_API_KEY"])
      @app_id = app_id
    end

    underscore = ->(str) {
      str.gsub(/(.)([A-Z\d])/,'\1_\2').downcase
    }

    %w(ProductLookup ProductSearch Top10 GetCategories GetPwbab)
      .each do |operation|
        define_method(underscore.(operation)) do |options|
          request_product(operation, options)
        end
      end

    %w(GetTextBookRentalInfo)
      .each do |operation|
        define_method(underscore.(operation)) do |options|
          request_textbook(operation, options)
        end
      end

    private

    def request_textbook(operation, options)
      request(operation, options.merge(
        path: "/TextBookService/v01_00/#{operation}"
      ))
    end


    def request_product(operation, options)
      request(operation, options.merge(
        path: "/v03_00/#{operation}"
      ))
    end

    def request(operation, options)
      options[:query]["AppId"] ||= @app_id
      Response.new(http.get(options))
    end

    def http
      Excon.new("http://services.barnesandnoble.com", expects: 200)
    end
  end
end
