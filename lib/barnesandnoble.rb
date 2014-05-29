require 'forwardable'
require 'barnesandnoble/request'

module BarnesAndNoble
  class << self
    extend Forwardable

    def_delegator Request, :new
  end
end
