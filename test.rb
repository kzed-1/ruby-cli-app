test =  {
    "id": 1,
    "product_type": "tshirt",
    "options": {
      "gender": "male",
      "color": "red",
      "size": "small"
    }
}

mug =  {
    "id": 51,
    "product_type": "mug",
    "options": {
      "type": "coffee-mug"
    }
}

sticker =  {
    "id": 53,
    "product_type": "sticker",
    "options": {
      "size": "x-small",
      "style": "matte"
    }
}

##########################

# ts1 = T_shirt.new(test[:id], test[:product_type], test[:options])
# ts1.add_options("gender")
# ts1.add_options("color")
# ts1.add_options("size")
# ts1.add_gender
# ts1.add_color
# ts1.add_size

# puts Product.availible_options
# puts T_shirt.availible_options

##########################

# m1 = Mug.new(mug[:id], mug[:product_type], mug[:options])
# m1.add_options("type")
# m1.add_type

# puts Product.availible_options
# puts Mug.availible_options

##########################

# s1 = Sticker.new(sticker[:id], sticker[:product_type], sticker[:options])
# s1.add_options("size")
# s1.add_options("style")
# s1.add_size
# s1.add_style

# puts Product.availible_options
# puts Sticker.availible_options

##########################

# shirt_array = [
#     {
#     "id": 1,
#     "product_type": "tshirt",
#     "options": {
#       "gender": "male",
#       "color": "red",
#       "size": "small"
#     }
#   },
#   {
#     "id": 2,
#     "product_type": "tshirt",
#     "options": {
#       "gender": "male",
#       "color": "red",
#       "size": "medium"
#     }
#   },
#   {
#     "id": 3,
#     "product_type": "tshirt",
#     "options": {
#       "gender": "male",
#       "color": "red",
#       "size": "large"
#     }
#   },
#    {
#     "id": 35,
#     "product_type": "tshirt",
#     "options": {
#       "gender": "female",
#       "color": "green",
#       "size": "2x-large"
#     }
#   }
# ]

# shirt_array.each do |shirt, i|
#     ts1 = T_shirt.new(shirt[:id], shirt[:product_type], shirt[:options])
#     ts1.add_options("gender")
#     ts1.add_options("color")
#     ts1.add_options("size")
#     ts1.add_gender
#     ts1.add_color
#     ts1.add_size
# end

# puts Product.availible_options

##########################

# mug_arr = [
#      {
#     "id": 51,
#     "product_type": "mug",
#     "options": {
#       "type": "coffee-mug"
#     }
#   },
#   {
#     "id": 52,
#     "product_type": "mug",
#     "options": {
#       "type": "travel-mug"
#     }
#   },
# ]


# mug_arr.each do |mug|
#     m1 = Mug.new(mug[:id], mug[:product_type], mug[:options])
#     m1.add_options("type")
#     m1.add_type
# end

# puts Product.availible_options

##########################


# sticker_arr = [
#   {
#     "id": 53,
#     "product_type": "sticker",
#     "options": {
#       "size": "x-small",
#       "style": "matte"
#     }
#   },
#   {
#     "id": 54,
#     "product_type": "sticker",
#     "options": {
#       "size": "small",
#       "style": "matte"
#     }
#   },
#   {
#     "id": 55,
#     "product_type": "sticker",
#     "options": {
#       "size": "medium",
#       "style": "matte"
#     }
#   },
#   {
#     "id": 56,
#     "product_type": "sticker",
#     "options": {
#       "size": "large",
#       "style": "matte"
#     }
#   },
#   {
#     "id": 57,
#     "product_type": "sticker",
#     "options": {
#       "size": "x-large",
#       "style": "matte"
#     }
#   },
#   {
#     "id": 58,
#     "product_type": "sticker",
#     "options": {
#       "size": "medium",
#       "style": "glossy"
#     }
#   },
#   {
#     "id": 59,
#     "product_type": "sticker",
#     "options": {
#       "size": "large",
#       "style": "glossy"
#     }
#   },
#   {
#     "id": 60,
#     "product_type": "sticker",
#     "options": {
#       "size": "x-large",
#       "style": "glossy"
#     }
#   }
# ]


# sticker_arr.each do |sticker|
#     s1 = Sticker.new(sticker[:id], sticker[:product_type], sticker[:options])
#     s1.add_options("size")
#     s1.add_options("style")
#     s1.add_size
#     s1.add_style
# end

# puts Product.availible_options

##########################

# Display all info here:

#############################################################

# def display_all(data, product_type)

#     if product_type == 'tshirt'

#         data.each do |product|
#             if product[:product_type] == 'tshirt'
#                 ts = T_shirt.new(product[:id], product[:product_type], product[:options])
#                 ts.add_options("gender")
#                 ts.add_options("color")
#                 ts.add_options("size")
#                 ts.add_gender
#                 ts.add_color
#                 ts.add_size
#             end
#         end

#     elsif product_type == 'sticker'

#         data.each do |product|
#             if product[:product_type] == 'sticker'
#                 s = Sticker.new(product[:id], product[:product_type], product[:options])
#                 s.add_options("size")
#                 s.add_options("style")
#                 s.add_size
#                 s.add_style
#             end
#         end

#         puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"
#         puts "Style: #{Product.availible_options["style"].to_a.join(", ")}"

#     else 

#         data.each do |product|
#             if product[:product_type] == 'mug'
#                 m = Mug.new(product[:id], product[:product_type], product[:options])
#                 m.add_options("type")
#                 m.add_type
#             end
#         end

#     end
# end

# display_all(jsonData, "sticker")

# puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"

#############################################################

####################################################################

# p jsonData.is_a?(Array)
# p jsonData[0]["product_type"]


# def parse_sticker(data, *option_value)

#     sizes = Set.new(["x-small", "small", "medium", "large","x-large"])
#     styles = Set.new(["glossy", "matte"])    

#     if option_value.length == 0

#         data.each do |product|
#             if product["product_type"] == 'sticker'
#                 s = Sticker.new(product["id"], product["product_type"], product["options"])
#                 s.add_options("size")
#                 s.add_options("style")
#                 s.add_size
#                 s.add_style
#             end
#         end

#         puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"
#         puts "Style: #{Product.availible_options["style"].to_a.join(", ")}"

#     elsif ( option_value.length == 1 && sizes.include?(option_value[0]) )

#         data.each do |product|

#             if product["product_type"] == 'sticker' && product["options"]["size"] == option_value[0]

#                 s = Sticker.new(product["id"], product["product_type"], product["options"])
#                 s.add_options("style")
#                 s.add_style
            
#             end
#         end
       
#         puts "Style: #{Product.availible_options["style"].to_a.join(", ")}"

#     elsif ( option_value.length == 2 && sizes.include?(option_value[0]) && styles.include?(option_value[1]) )

#         result = []

#         data.each do |product|

#             if product["product_type"] == 'sticker' && product["options"]["size"] == option_value[0] && product["options"]["style"] == option_value[1]

#                 s = Sticker.new(product["id"], product["product_type"], product["options"])

#                 result.push(s)
                
#             end
#         end

#         p result

#     else
#         puts "results not found please search again"
#     end

# end

# display_stickers(jsonData, "small")
# display_stickers(jsonData, "large", "matte")
# display_stickers(jsonData)


# def parse_mugs(data, option_value=nil)

#     styles = Set.new(["travel-mug", "coffee-mug"])    

#     if option_value == nil

#         data.each do |product|
#             if product["product_type"] == 'mug'
#                 m = Mug.new(product["id"], product["product_type"], product["options"])
#                 m.add_options("type")
#                 m.add_type
#             end
#         end

#         puts "Options: #{Product.availible_options["type"].to_a.join(", ")}"

#     elsif (styles.include?(option_value))
        
#         result = []

#         data.each do |product|

#             if product["product_type"] == 'mug' && product["options"]["type"] == option_value
#                 m = Mug.new(product["id"], product["product_type"], product["options"])

#                 result.push(m)
#             end
#         end

#         puts result

#     else
#         puts "results not found please search again"
#     end

# end 

# display_mugs(jsonData)
# display_mugs(jsonData, "travel-mug")

####################################################################


########################################################

# def display_tshirts(data, *options)

#     if options.length == 0
#         Parse.parse_shirts(data)
#     else 
#         Parse.parse_shirts(data, *options)
#     end

# end

# def display_stickers(data, *options)

#     if options.length == 0
#         Parse.parse_sticker(data)
#     else 
#         Parse.parse_sticker(data, *options)
#     end

# end

# def display_mugs(data, *options)

#     if options.length == 0
#         Parse.parse_mugs(data)
#     else 
#         Parse.parse_mugs(data, options[0])
#     end

# end



# if ARGV[0] == "tshirt"

#     if ARGV.length > 1 
#         display_tshirts(jsonData, *ARGV[1..-1])
#     else
#         display_tshirts(jsonData)
#     end

# elsif ARGV[0] == "sticker"

#     if ARGV.length > 1 
#         display_stickers(jsonData, *ARGV[1..-1])
#     else
#         display_stickers(jsonData)
#     end

# elsif ARGV[0] == "mug"

#     if ARGV.length > 1 
#         display_mugs(jsonData, *ARGV[1..-1])
#     else
#         display_mugs(jsonData)
#     end

# else
#     puts "please enter: product_type [option1 option2 option3]"
# end

##########################################################################

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

##########################################################################


# if ARGV[0] == "tshirt"

#     if ARGV.length > 1 
#         Parse.parse_shirts(json_data, *ARGV[1..-1])
#     else
#         Parse.parse_shirts(json_data)
#     end

# elsif ARGV[0] == "sticker"

#     if ARGV.length > 1 
#         Parse.parse_sticker(json_data, *ARGV[1..-1])
#     else
#         Parse.parse_sticker(json_data)
#     end

# elsif ARGV[0] == "mug"

#     if ARGV.length > 1 
#         Parse.parse_mugs(json_data, ARGV[1])
#     else
#         Parse.parse_mugs(json_data)
#     end

# else
#     puts "please enter: product_type [option1 option2 option3]"
# end

##########################################################################
