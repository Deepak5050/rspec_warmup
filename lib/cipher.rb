def caesar_cipher(input, shift)
	lower_case = Array('a'..'z') 
	lower_case_shifted = lower_case.rotate(shift)

	upper_case = Array('A'..'Z')
	upper_case_shifted = upper_case.rotate(shift)

	input = input.split("")
	input_shifted = ""

	input.each do |letter|
		if lower_case.include? (letter)
			input_shifted << lower_case_shifted[lower_case.index(letter)]
		elsif upper_case.include? (letter)
			input_shifted << upper_case_shifted[upper_case.index(letter)]
		else
			input_shifted << letter
		end
	end

	p input_shifted

end

