module Parse

# function that parses data for product type sticker and returns the options availbile to standard output
    def Parse.parse_sticker(data, *option_value)

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

# function that parses data for product type mug and returns the options availbile to standard output
    def Parse.parse_mugs(data, option_value=nil)

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

            p result

        else
            puts "results not found please search again"
        end

    end 

# function that parses data for product type tshirt and returns the options availbile to standard output
    def Parse.parse_shirts(data, *option_value)

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
                    # ts.add_options("color")
                    ts.add_options("size")
                    # ts.add_color
                    ts.add_size
                end
            end

            puts "Size: #{Product.availible_options["size"].to_a.join(", ")}"

        elsif ( option_value.length == 3 && gender.include?(option_value[0]) && colors.include?(option_value[1]) && sizes.include?(option_value[2]) )

            result = []

            data.each do |product|

                if ( product["product_type"] == 'tshirt' && (product["options"]["gender"] == option_value[0]) && (product["options"]["color"] == option_value[1]) && (product["options"]["size"] == option_value[2]) )
                    ts = T_shirt.new(product["id"], product["product_type"], product["options"])
                    # ts.add_options("color")
                    # ts.add_options("size")
                    # ts.add_color
                    # ts.add_size

                    result.push(ts)
                end
            end

            p result

        else 
            puts "results not found please search again"
        end

    end 
    
end