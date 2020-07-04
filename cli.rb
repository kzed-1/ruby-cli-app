#! /usr/bin/env ruby

require_relative './products/t_shirt.rb'
require_relative './products/mug.rb'
require_relative './products/sticker.rb'
require_relative './parse_functions.rb'

require 'json'

json_data_from_file = File.read("data.json")
jsonData = JSON.parse(json_data_from_file)

if ARGV[0] == "tshirt"

    if ARGV.length > 1 
        Parse.parse_shirts(jsonData, *ARGV[1..-1])
    else
        Parse.parse_shirts(jsonData)
    end

elsif ARGV[0] == "sticker"

    if ARGV.length > 1 
        Parse.parse_sticker(jsonData, *ARGV[1..-1])
    else
        Parse.parse_sticker(jsonData)
    end

elsif ARGV[0] == "mug"

    if ARGV.length > 1 
        Parse.parse_mugs(jsonData, ARGV[1])
    else
        Parse.parse_mugs(jsonData)
    end

else
    puts "please enter: product_type [option1 option2 option3]"
end
