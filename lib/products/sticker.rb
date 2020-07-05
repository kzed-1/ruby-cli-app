require_relative './product.rb'
require 'set'

class Sticker < Product

    attr_accessor :size, :style

    def initialize(id, product_type, options)
        super
        @size = options["size"]
        @style = options["style"]
    end

    def add_size
        @@availible_options["size"].add(@size)
    end

    def add_style
        @@availible_options["style"].add(@style)
    end

end

