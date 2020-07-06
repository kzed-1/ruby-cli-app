require 'set'

class Product
    attr_accessor :id, :product_type, :options

    @@availible_options = {}

    def initialize(id, product_type, options) 
        @id = id
        @product_type = product_type
        @options = options
    end

    def add_options(option)
        if !@@availible_options[option]          
            @@availible_options[option] = Set.new([])  
        end
    end

    def self.availible_options
        @@availible_options
    end

    def self.clear_options
        @@availible_options = {}
    end

end

