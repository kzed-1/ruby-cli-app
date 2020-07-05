require '../lib/products/mug.rb'

describe Mug do 
    subject(:mug) { Mug.new(52, "mug", { "type" => "travel-mug" }) }

    describe '#initialize' do 
        it 'takes in an id' do 
            expect(mug.id).to eq(52)
        end

        it 'takes in a product type' do 
            expect(mug.product_type).to eq('mug')
        end

        it 'takes in options as a hash' do 
            expect(mug.options).to eq({ "type" => "travel-mug" })
        end

        it 'sets type option as an instant varable' do 
            expect(mug.type).to eq("travel-mug")
        end

    end

    describe '#add_type' do
        before(:each) { mug.add_options("type") }

        it 'adds this instance of mug type option into the product class option hash' do 
            mug.add_type
            expect(Product.availible_options["type"]).to eq(Set.new(["travel-mug"]))
        end
    end

end