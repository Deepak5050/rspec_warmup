require './lib/cipher'

describe "cipher" do 

	it "raises error if improper arguments given" do 			
		expect { caesar_cipher("What a string!", 'five') }.to raise_error(TypeError)
	end


	it "shifts the letter" do
		expect(caesar_cipher('a', 5)).to eq 'f'
	end

	it "shifts the the correct case" do 
		expect(caesar_cipher('Aa', 5)).to eq 'Ff'
	end

	it "doesn't shift non-alpha characters" do
		expect(caesar_cipher('a2Z', 5)).to eq 'f2E'
	end

	
end