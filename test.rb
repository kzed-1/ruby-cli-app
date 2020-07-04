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
