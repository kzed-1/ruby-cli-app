require '../lib/products/sticker.rb'

describe Sticker do 
    subject(:sticker) { Sticker.new(59, "sticker", { "size" => "large", "style" => "glossy" }) }

    describe '#initialize' do 
        it 'takes in an id' do 
            expect(sticker.id).to eq(59)
        end

        it 'takes in a product type' do 
            expect(sticker.product_type).to eq('sticker')
        end

        it 'takes in options as a hash' do 
            expect(sticker.options).to eq({ "size" => "large", "style" => "glossy" })
        end

        it 'sets size option as an instant varable' do 
            expect(sticker.size).to eq("large")
        end

        it 'sets style option as an instant varable' do 
            expect(sticker.style).to eq("glossy")
        end

    end

    describe '#add_size' do
        before(:each) { sticker.add_options("size") }

        it 'adds this instance of sticker size option into the product class option hash' do 
            sticker.add_size
            expect(Product.availible_options["size"]).to eq(Set.new(["large"]))
        end
    end

    describe '#add_style' do
        before(:each) { sticker.add_options("style") }

        it 'adds this instance of sticker style option into the product class option hash' do 
            sticker.add_style
            expect(Product.availible_options["style"]).to eq(Set.new(["glossy"]))
        end
    end

end