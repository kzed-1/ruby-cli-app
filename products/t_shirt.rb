require_relative './product.rb'
require 'set'

class T_shirt < Product

    attr_accessor :gender, :color, :size

    def initialize(id, product_type, options)
        super
        @gender = options["gender"]
        @color = options["color"]
        @size = options["size"]
    end

    def add_gender
        @@availible_options["gender"].add(@gender)
    end

    def add_color
        @@availible_options["color"].add(@color)
    end

    def add_size
        @@availible_options["size"].add(@size)
    end

end

