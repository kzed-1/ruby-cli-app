require '../lib/parse_functions.rb'
require '../lib/products/t_shirt.rb'
require '../lib/products/mug.rb'
require '../lib/products/sticker.rb'
require '../lib/cli.rb'

require 'json'

path = File.expand_path("/Users/kenzhao/Desktop/my-first-cli/lib/products.json")
json_data = JSON.parse(File.read(path))

describe CliOutput do 

    describe '#output' do 
        let(:dummy) { CliOutput.new }

        context 'output tshirt options when tshirt is given as the cli input value' do 
            it 'when tshirt product_type is given it should output the availible options' do
                expect do 
                    (dummy.output(json_data, ["tshirt"]))
                end.to output("Gender: male, female\nColor: red, green, navy, white, black\nSize: small, medium, large, extra-large, 2x-large\n").to_stdout
            end

            it 'when tshirt product_type is given with an option gender: female, it should output the availible colors and sizes options' do
                expect do 
                    (dummy.output(json_data, ["tshirt", "female"]))
                end.to output("Color: red, green, navy, white, black\nSize: small, medium, large, extra-large, 2x-large\n").to_stdout
            end

            it 'when tshirt product_type is given with options gender: female, color:red, it should output the availible sizes options' do
                expect do 
                    (dummy.output(json_data, ["tshirt", "female", "red"]))
                end.to output("Size: small, medium, large, extra-large, 2x-large\n").to_stdout
            end

        end

        context 'output sticker options when sticker is given as the cli input value' do 
            it 'when sticker product_type is given it should output the availible sizes and styles options' do
                expect do 
                    (dummy.output(json_data, ["sticker"]))
                end.to output("Size: small, medium, large, extra-large, 2x-large, x-small, x-large\nStyle: matte, glossy\n").to_stdout
            end

            it 'when sticker product_type is given with an option size: small, it should output the availible styles options' do
                expect do 
                    (dummy.output(json_data, ["sticker", "small"]))
                end.to output("Style: matte, glossy\n").to_stdout
            end
        end

        context 'output mug options when mug is given as the cli input value' do 
            it 'when mug product_type is given it should output the availible sizes and styles options' do
                expect do 
                    (dummy.output(json_data, ["mug"]))
                end.to output("Type: coffee-mug, travel-mug\n").to_stdout
            end
        end
    end
    
end


