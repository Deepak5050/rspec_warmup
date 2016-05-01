require_relative '../lib/tic_tac_toe/board'

describe Board do 

	context "#intialize" do 
		it "initializes the board with a grid" do 
			expect { Board.new(grid: "grid")}.to_not raise_error
		end
	end

	context "#grid" do 
		it "returns the grid" do 
			board = Board.new(grid: "blah")
			expect(board.grid).to eq "blah"
		end
	end

	context "#get_cell" do 
		it "returns the cell based on the (x, y) coordinate" do 
			grid = [['', '', ''], ['', 'something', ''], ['', '', '']]
			board = Board.new(grid: grid)
			expect(board.get_cell(1, 1)).to eq 'something'
		end
	end

	context "#get_cell" do 
		it "returns the cell based on the (x, y) coordinate" do 
			grid = [['', '', ''], ['', Cell.new, ''], ['', '', '']]
			board = Board.new(grid: grid)
			expect(board.set_cell(1, 1, 'X')).to eq 'X'
		end
	end

	context "#game_over" do 
		it "returns :winner if winner? is true" do 
			board = Board.new
			board.stub(:winner?) { true }
			expect(board.game_over).to eq :winner
		end	

		it "returns :draw if winner? is false and draw? is true" do 
			board = Board.new
			board.stub(:winner?) { false }
			board.stub(:draw?) { true }
			expect(board.game_over).to eq :draw
		end

		it "returns false if winner? is false and draw? is false" do 
			board = Board.new
			board.stub(:winner?) { false }
			board.stub(:draw?) { false }
			expect(board.game_over).to be false
		end
	end

TestCell = Struct.new(:value)
let(:x_cell) { TestCell.new("X") }
let(:y_cell) { TestCell.new("Y") }
let(:empty) { TestCell.new }
 
context "#game_over" do
  it "returns :winner if winner? is true" do
    board = Board.new
    board.stub(:winner?) { true }
    expect(board.game_over).to eq :winner
  end
 
  it "returns :draw if winner? is false and draw? is true" do
    board = Board.new
    board.stub(:winner?) { false }
    board.stub(:draw?) { true }
    expect(board.game_over).to eq :draw
  end
 
  it "returns false if winner? is false and draw? is false" do
    board = Board.new
    board.stub(:winner?) { false }
    board.stub(:draw?) { false }
    expect(board.game_over).to be false
  end
 
  it "returns :winner when row has objects with values that are all the same" do
    grid = [
      [x_cell, x_cell, x_cell],
      [y_cell, x_cell, y_cell],
      [y_cell, y_cell, empty]
    ]
    board = Board.new(grid: grid)
    expect(board.game_over).to eq :winner
  end
 
  it "returns :winner when colum has objects with values that are all the same" do
    grid = [
      [x_cell, x_cell, empty],
      [y_cell, x_cell, y_cell],
      [y_cell, x_cell, empty]
    ]
    board = Board.new(grid: grid)
    expect(board.game_over).to eq :winner
  end
 
  it "returns :winner when diagonal has objects with values that are all the same" do
    grid = [
      [x_cell, empty, empty],
      [y_cell, x_cell, y_cell],
      [y_cell, x_cell, x_cell]
    ]
    board = Board.new(grid: grid)
    expect(board.game_over).to eq :winner
  end
 
  it "returns :draw when all spaces on the board are taken" do
    grid = [
      [x_cell, y_cell, x_cell],
      [y_cell, x_cell, y_cell],
      [y_cell, x_cell, y_cell]
    ]
    board = Board.new(grid: grid)
    expect(board.game_over).to eq :draw
  end
 
  it "returns false when there is no winner or draw" do
    grid = [
      [x_cell, empty, empty],
      [y_cell, empty, empty],
      [y_cell, empty, empty]
    ]
    board = Board.new(grid: grid)
    expect(board.game_over).to be false
  end
end
end