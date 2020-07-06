require '../lib/parse_functions.rb'
require '../lib/products/t_shirt.rb'
require '../lib/products/mug.rb'
require '../lib/products/sticker.rb'

require 'json'

json_data_from_file = File.read("../lib/products.json")
data = JSON.parse(json_data_from_file)

describe Parse do 

    describe '#parse_sticker' do  

        context 'without options' do 
            it 'outputs size and style to terminal console' do
                expect do 
                    Parse.parse_sticker(data)
                end.to output("Size: x-small, small, medium, large, x-large\nStyle: matte, glossy\n").to_stdout
            end
        end

        context 'with option size: small' do 
            it 'outputs style to terminal console' do
                expect do 
                    Parse.parse_sticker(data, "small")
                end.to output("Style: matte").to_stdout
            end
        end
        
    end

     describe '#parse_mugs' do  

        context 'without options' do 
            it 'outputs size and style to terminal console' do
                expect do 
                    Parse.parse_mugs(data)
                end.to output("Options: coffee-mug, travel-mug\n").to_stdout
            end
        end
        
    end

      describe '#parse_shirts' do  

        context 'without options' do 
            it 'outputs gender, color and sizes to terminal console' do
                expect do 
                    Parse.parse_shirts(data)
                end.to output("Gender: male, female\nColor: red, green, navy, white, black\nSize: x-small, small, medium, large, x-large, extra-large, 2x-large\n").to_stdout
            end
        end

        context 'with option gender: female' do 
            it 'outputs colors, and sizes to terminal console' do
                expect do 
                    Parse.parse_shirts(data, "female")
                end.to output("Color: red, green, navy, white, black\nSize: x-small, small, medium, large, x-large, extra-large, 2x-large\n").to_stdout
            end
        end

        context 'with option any gender: female and color: red' do 
            it 'outputs sizes to terminal console' do
                expect do 
                    Parse.parse_shirts(data, "female", "red")
                end.to output("Size: x-small, small, medium, large, x-large, extra-large, 2x-large\n").to_stdout
            end
        end
        
    end

end

