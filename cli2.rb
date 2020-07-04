#! /usr/bin/env ruby

require_relative './products/t_shirt.rb'
require_relative './products/mug.rb'
require_relative './products/sticker.rb'

require 'json'

json_data_from_file = File.read("data.json")
jsonData = JSON.parse(json_data_from_file)

# p jsonData.is_a?(Array)
# p jsonData[0]["product_type"]

def display_all(data, product_type)

    if product_type == 'tshirt'

        data.each do |product|
            if product[:product_type] == 'tshirt'
                ts = T_shirt.new(product[:id], product[:product_type], product[:options])
                ts.add_options("gender")
                ts.add_options("color")
                ts.add_options("size")
                ts.add_gender
                ts.add_color
                ts.add_size
            end
        end

    elsif product_type == 'sticker'

        data.each do |product|
            if product[:product_type] == 'sticker'
                s = Sticker.new(product[:id], product[:product_type], product[:options])
                s.add_options("size")
                s.add_options("style")
                s.add_size
                s.add_style
            end
        end

        puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"
        puts "Style: #{Product.availible_options["style"].to_a.join(", ")}"

    else 

        data.each do |product|
            if product[:product_type] == 'mug'
                m = Mug.new(product[:id], product[:product_type], product[:options])
                m.add_options("type")
                m.add_type
            end
        end

    end
end

# display_all(jsonData, "sticker")

# puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"

def display_stickers(data, *options)

    if options.length == 0
        parse_sticker(data)
    else 
        parse_sticker(data, *options)
    end

end

def parse_sticker(data, *option_value)

    sizes = Set.new(["x-small", "small", "medium", "large","x-large"])
    styles = Set.new(["glossy", "matte"])    

    if option_value.length == 0

        data.each do |product|
            if product["product_type"] == 'sticker'
                s = Sticker.new(product["id"], product["product_type"], product["options"])
                s.add_options("size")
                s.add_options("style")
                s.add_size
                s.add_style
            end
        end

        puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"
        puts "Style: #{Product.availible_options["style"].to_a.join(", ")}"

    elsif ( option_value.length == 1 && sizes.include?(option_value[0]) )

        data.each do |product|

            if product["product_type"] == 'sticker' && product["options"]["size"] == option_value[0]

                s = Sticker.new(product["id"], product["product_type"], product["options"])
                s.add_options("style")
                s.add_style
            
            end
        end
       
        puts "Style: #{Product.availible_options["style"].to_a.join(", ")}"

    elsif ( option_value.length == 2 && sizes.include?(option_value[0]) && styles.include?(option_value[1]) )

        result = []

        data.each do |product|

            if product["product_type"] == 'sticker' && product["options"]["size"] == option_value[0] && product["options"]["style"] == option_value[1]

                s = Sticker.new(product["id"], product["product_type"], product["options"])

                result.push(s)
                
            end
        end

        p result

    else
        puts "results not found please search again"
    end

end

# display_stickers(jsonData, "small")
# display_stickers(jsonData, "large", "matte")
# display_stickers(jsonData)


def display_mugs(data, *options)

    if options.length == 0
        parse_mugs(data)
    else 
       parse_mugs(data, options[0])
    end

end


def parse_mugs(data, option_value=nil)

    styles = Set.new(["travel-mug", "coffee-mug"])    

    if option_value == nil

        data.each do |product|
            if product["product_type"] == 'mug'
                m = Mug.new(product["id"], product["product_type"], product["options"])
                m.add_options("type")
                m.add_type
            end
        end

        puts "Options: #{Product.availible_options["type"].to_a.join(", ")}"

    elsif (styles.include?(option_value))
        
        result = []

        data.each do |product|

            if product["product_type"] == 'mug' && product["options"]["type"] == option_value
                m = Mug.new(product["id"], product["product_type"], product["options"])

                result.push(m)
            end
        end

        puts result

    else
        puts "results not found please search again"
    end

end 

# display_mugs(jsonData)
# display_mugs(jsonData, "travel-mug")

def display_tshirts(data, *options)

    if options.length == 0
        parse_shirts(data)
    else 
       parse_shirts(data, *options)
    end

end

def parse_shirts(data, *option_value)

    gender = Set.new(["female", "male"]) 
    colors = Set.new(["red", "green", "navy", "white", "black"])  
    sizes = Set.new(["x-small", "small", "medium", "large","x-large"])

    if option_value.length == 0

        data.each do |product|
            if product["product_type"] == 'tshirt'
                ts = T_shirt.new(product["id"], product["product_type"], product["options"])
                ts.add_options("gender")
                ts.add_options("color")
                ts.add_options("size")
                ts.add_gender
                ts.add_color
                ts.add_size
            end
        end

        puts "Gender: #{Product.availible_options["gender"].to_a.join(", ")}"
        puts "Color: #{Product.availible_options["color"].to_a.join(", ")}"
        puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"

    elsif option_value.length == 1  && gender.include?(option_value[0])

        data.each do |product|

            if product["product_type"] == 'tshirt' && product["options"]["gender"] == option_value[0]
                ts = T_shirt.new(product["id"], product["product_type"], product["options"])
                ts.add_options("color")
                ts.add_options("size")
                ts.add_color
                ts.add_size
            end
        end

        puts "Color: #{Product.availible_options["color"].to_a.join(", ")}"
        puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"

    elsif ( option_value.length == 2 && gender.include?(option_value[0]) && colors.include?(option_value[1]) )

        data.each do |product|

            if product["product_type"] == 'tshirt' && product["options"]["gender"] == option_value[0] && product["options"]["color"] == option_value[1]
                ts = T_shirt.new(product["id"], product["product_type"], product["options"])
                ts.add_options("color")
                ts.add_options("size")
                ts.add_color
                ts.add_size
            end
        end

        puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"

    elsif ( option_value.length == 3 && gender.include?(option_value[0]) && colors.include?(option_value[1]) && sizes.include?(option_value[2]) )

        result = []

        data.each do |product|

            if ( product["product_type"] == 'tshirt' && (product["options"]["gender"] == option_value[0]) && (product["options"]["color"] == option_value[1]) && (product["options"]["size"] == option_value[2]) )
                ts = T_shirt.new(product["id"], product["product_type"], product["options"])
                ts.add_options("color")
                ts.add_options("size")
                ts.add_color
                ts.add_size

                result.push(ts)
            end
        end

        puts result

    else 
        puts "results not found please search again"
    end

end 

# display_tshirts(jsonData)
# display_tshirts(jsonData, "male")
# display_tshirts(jsonData, "male", "black")
# display_tshirts(jsonData, "male", "black", "small")


if ARGV[0] == "tshirt"
    display_tshirts(jsonData)
elsif ARGV[0] == "sticker"
    display_stickers(jsonData)
elsif ARGV[0] == "mug"
    display_mugs(jsonData)
end