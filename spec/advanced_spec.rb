require './lib/advanced_building_blocks.rb'

describe Enumerable do 
	let(:array) {[1, 2, 3]}

	before :each do 
		@test = []
	end

	describe "#my_each" do 
		it 'sends each element of an array to the block' do
			array.my_each { |element| @test << element }
			expect(@test).to eq array
		end
	end

	describe "#my_each_with_index" do 
		it "sends each element and its index number to the block" do 
			array.my_each_with_index { |e, i| @test << e * i}
			expect(@test).to eq [0, 2, 6]
		end
	end

	describe "#my_select" do 
		it "gets the element of an array based on the block" do 
			p array.my_each_with_index { |e| @test << e if e % 2 == 0 }
			expect(@test).to eq [2]
		end
	end

	describe "#my_all?" do 
		it "returns true if all elements meets block's condition" do 
			expect(array.my_all? { |e| e.to_s.size == 1 }).to be true
		end

		it "returns false if all elements meets block's condition" do 
			expect(array.my_all? { |e| e == 1 }).to be false
		end
	end

	describe "#my_any?" do 
		it "returns true if one or more element match block's condition" do 
			expect(array.my_any? { |e| e == 2 }).to be true
		end

		it "returns false if all the elements don't match block's condition" do 
			expect(array.my_any? { |e| e == 5 }).to be false
		end
	end

	describe "#my_none?" do 
		it "returns true if none of the elements match block's condition" do 
			expect(array.my_none? { |e| e == 'five'}).to be true
		end

		it "returns false if any one of the elements match block's condition" do 
			expect(array.my_none? { |e| e == 1 }).to be false
		end
	end

	describe "#my_count" do 
		it "returns the total number of elements of an array" do 
			expect(array.my_count).to eq 3
		end
	end

	describe "#my_map" do 
		it "sends elements of the given array to the block and returns a new array" do 
			expect(array.my_map { |e| e * 2 }).to eq [2, 4, 6]
		end
	end

end