#! /usr/bin/env ruby

require_relative './products/t_shirt.rb'
require_relative './products/mug.rb'
require_relative './products/sticker.rb'
require_relative './parse_functions.rb'

require 'json'


path = File.expand_path("/Users/kenzhao/Desktop/my-first-cli/lib/products.json")
json_data = JSON.parse(File.read(path))


class CliOutput

    include Parse

    def initialize
        super
    end

    def output(data, argv_array)

        if argv_array[0] == "tshirt"

            if argv_array.length > 1 
                Parse.parse_shirts(data, *argv_array[1..-1])
            else
                Parse.parse_shirts(data)
            end

        elsif argv_array[0] == "sticker"

            if argv_array.length > 1 
                Parse.parse_sticker(data, *argv_array[1..-1])
            else
                Parse.parse_sticker(data)
            end

        elsif argv_array[0] == "mug"

            if argv_array.length > 1 
                Parse.parse_mugs(data, argv_array[1])
            else
                Parse.parse_mugs(data)
            end

        else
            puts "please enter: product_type [option1 option2 option3]"
        end

    end

end

test = CliOutput.new

test.output(json_data, ARGV)



