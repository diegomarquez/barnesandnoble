# frozen_string_literal: true

require 'delegate'
require 'multi_xml'

module Barnesandnoble
  class Response < SimpleDelegator
    def body
      __getobj__.body.force_encoding('ISO8859-1').encode('UTF-8')
    end

    def to_h
      MultiXml.parse(body)
    end
  end
end
