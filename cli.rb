#! /usr/bin/env ruby

# require 'optparse'
# require 'json'

# json_data_from_file = File.read("data.json")
# jsonData = JSON.parse(json_data_from_file)


# # def searchByProductType(type) 
# #     if type == "tshirt"
# #         jsonData.select { |object| object["product_type"] == "tshirt" }
# #     elsif type == "sticker"
# #         jsonData.select { |object| object["product_type"] == "sticker" }
# #     end
# # end

# options = {}
# OptionParser.new do |parser|
#     parser.on("tshirt", "--tshirt gender", "tshirt gender") do |value|
#         options[:tshirt] = value 
#     end 
# end.parse!

# if options[:tshirt] 
#     # puts jsonData.select { |object| object[:options][:gender] == options[:tshirt] }
#     puts options[:tshirt]
# else 
#     # puts jsonData.select { |object| object["product_type"] == "tshirt" }

#     # jsonData.each do |object|

#     #     if object["product_type"] == "tshirt"
#     #        puts "Gender: #{object["options"]["gender"]}"
#     #        puts "Color: #{object["options"]["color"]}"
#     #        puts "Size: #{object["options"]["size"]}"
#     #     end

#     # end

#     puts options

# end 

# require 'thor'
# require 'json'

# json_data_from_file = File.read("data.json")
# jsonData = JSON.parse(json_data_from_file)


# def searchByProductType(type) 
#     if type == "tshirt"
#         jsonData.select { |object| object["product_type"] == "tshirt" }
#     elsif type == "sticker"
#         jsonData.select { |object| object["product_type"] == "sticker" }
#     end
# end

# puts hash
# p hash

# class RailsCLI < Thor 
#     class_option :verbose, :type => :boolean, :aliases => "-v"

#     json_data_from_file = File.read("data.json")
#     jsonData = JSON.parse(json_data_from_file)


#     def searchByProductType(type) 
#         if type == "tshirt"
#             jsonData.select { |object| object["product_type"] == "tshirt" }
#         elsif type == "sticker"
#             jsonData.select { |object| object["product_type"] == "sticker" }
#         end
#     end

#     desc "tshirt", "product type"

#     def tshirt(value)
#         searchByProductType(value)
#     end

# end 

# RailsCLI.start(ARGV)

# ARGV file is an array 

require 'json'
require 'set'

json_data_from_file = File.read("data.json")
json_data = JSON.parse(json_data_from_file)

# product_type = Set.new(["mug", "tshirt", "sticker"])
# gender = Set.new(["male", "female"])
# color = Set.new(["red","navy","green","white", "black"])
# size = Set.new(["small", "medium", "large", "extra-large", "2x-large"])
# type = Set.new(["travel-mug", "coffee-mug"])
# style =Set.new(["matte", "glossy"])

gender_array = [].to_s
color_array = [].to_s
size_array = [].to_s
style = [].to_s

# if prodcut type tshirt do this


def get_gender(*args)
    if args.length == 0
        json_data.each do |object|
            current_gender = object["options"]["gender"]
            gender_array.add(current_gender) if !(gender_array.include?(current_gender))
        end
    else
        json_data.each do |object|
            gender_array.add(current_gender) if !(gender_array.include?(current_gender))
        end

    end
end

# def parse_array(product_type)

# json_data.each do |object|
#     if object["product_type"] == "tshirt"
        


#     end

# end



#if firs arg is tshirt do this:

def tshirt(*options)

    if options.includes()

end



p jsonData



