require_relative '../lib/tic_tac_toe/cell.rb'

describe Cell do 
	context "#initialzie" do 
		it "is initialized with a value of '' by default" do 
			cell = Cell.new
			expect(cell.value).to eq ''
		end

		it "can can be initialized with a value of 'X' " do 
			cell = Cell.new('X')
			expect(cell.value).to eq 'X'
		end
	end
end