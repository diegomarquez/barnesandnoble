# frozen_string_literal: true

require 'forwardable'
require 'barnesandnoble/request'

module Barnesandnoble
  class << self
    extend Forwardable

    def_delegator Request, :new
  end
end
