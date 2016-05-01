require_relative '../lib/tic_tac_toe/core_extensions'

describe Array do 

	context "#all_empty?" do 
		it "returns true if all elements of the Array are empty" do 
			expect(["", "", ""].all_empty?).to be true
		end

		it "returns false if some of the Array elements are not empty" do 
			expect(["", 1, ""].all_empty?).to be false
		end

		it "returns true for an empty Array" do 
			expect([].all_empty?).to be true
		end

		it "returns true if all elements of the array are the same" do 
			expect(['a', 'a', 'a'].all_same?).to be true
		end

		it "returns false if some of the array elements are not the same" do 
			expect(['a', 'b', 'a'].all_same?).to be false
		end
	end
end