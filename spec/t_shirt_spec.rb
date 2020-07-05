require '../lib/products/t_shirt.rb'

describe T_shirt do 
    subject(:tshirt) { T_shirt.new(1, "tshirt", { "gender" => "male", "color" => "red", "size" => "small" }) }

    describe '#initialize' do 
        it 'takes in an id' do 
            expect(tshirt.id).to eq(1)
        end

        it 'takes in a product type' do 
            expect(tshirt.product_type).to eq('tshirt')
        end

        it 'takes in options as a hash' do 
            expect(tshirt.options).to eq({ "gender" => "male", "color" => "red", "size" => "small" })
        end

        it 'sets gender option as an instant varable' do 
            expect(tshirt.gender).to eq("male")
        end

        it 'sets color option as an instant varable' do 
            expect(tshirt.color).to eq("red")
        end

        it 'sets size option as an instant varable' do 
            expect(tshirt.size).to eq("small")
        end
    end

    describe '#add_gender' do 
        before(:each) { tshirt.add_options("gender") }

        it 'adds this instance of tshirt gender option into the product class option hash' do 
            tshirt.add_gender
            expect(Product.availible_options["gender"]).to eq(Set.new(["male"]))
        end
    end

    describe '#add_color' do
        before(:each) { tshirt.add_options("color") }

        it 'adds this instance of tshirt color option into the product class option hash' do 
            tshirt.add_color
            expect(Product.availible_options["color"]).to eq(Set.new(["red"]))
        end
    end

     describe '#add_size' do
        before(:each) { tshirt.add_options("size") }

        it 'adds this instance of tshirt size option into the product class option hash' do 
            tshirt.add_size
            expect(Product.availible_options["size"]).to eq(Set.new(["small"]))
        end
    end

end