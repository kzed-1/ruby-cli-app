require '../lib/products/product.rb'

describe Product do 
    subject(:tshirt) { Product.new(1, "tshirt", { "gender": "male", "color": "red", "size": "small" }) }

    describe '#initialize' do 
        it 'takes in an id' do 
            expect(tshirt.id).to eq(1)
        end

        it 'takes in a product type' do 
            expect(tshirt.product_type).to eq('tshirt')
        end

        it 'takes in options as a hash' do 
            expect(tshirt.options).to eq({ "gender": "male", "color": "red", "size": "small" })
        end
    end

    describe 'add_options' do 

        context 'option not in availible_options' do 
            before(:each) { tshirt.add_options("gender") }

            it 'adds an option as a key to the availible_options hash' do 
                expect(Product.availible_options).to have_key('gender')
            end

            it 'adds new set as a value to the availible_options hash' do 
                expect(Product.availible_options).to have_value(Set.new([]))
            end
        end

        context 'option already in availible_options' do 
            before(:each) { tshirt.add_options("gender") }

            it 'has the same key in availible_options' do 
                expect(Product.availible_options).to have_key('gender')
            end

            it 'has the same set as value in availble_options' do 
                temp = Product.availible_options["gender"]
                tshirt.add_options("gender") 
                expect(Product.availible_options["gender"]).to be(temp)
            end
        end

    end

    describe '.availible_options' do 
        before(:each) { tshirt.add_options("gender") }

        it 'returns the availble_options class attribute hash' do 
            temp = Product.availible_options
            expect(Product.availible_options).to eq({ 'gender' => Set.new([])})
        end

    end

end 


