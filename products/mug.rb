require_relative './product.rb'
require 'set'

class Mug < Product

    attr_accessor :type

    def initialize(id, product_type, options)
        super
        @type = options["type"]
    end

    def add_type()
        @@availible_options["type"].add(@type)
    end

end

