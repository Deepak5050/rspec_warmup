require_relative '../lib/tic_tac_toe/player'

describe Player do 

	context "initialize" do 
		it "raises an exception when initialized with {}" do 
			expect { Player.new({}) }.to raise_error
		end

		it "does not raise an error when initialized with a valid input hash" do 
			expect { Player.new(name: "Deepak", color: "X") }.to_not raise_error
		end
	end

	context "#color" do 
		it "returns the color" do 
			player = Player.new(name: "Deepak", color: "X")
			expect(player.color).to eq 'X'
		end
	end

	context "#name" do 
		it "returns the name" do 
			player = Player.new(name: "Deepak", color: "X")
			expect(player.name).to eq 'Deepak'
		end
	end
end