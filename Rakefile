require 'rspec/core/rake_task'

task :default => :run

desc "Run caesar's cipher"
task :run do 
	ruby "-w lib/cipher.rb"
	ruby "-w lib/advanced_building_blocks.rb"
	ruby "-w lib/tic_tac_toe/cell"
	ruby "-w lib/tic_tac_toe/player"
	ruby "-w lib/tic_tac_toe/board"
	ruby "-w lib/tic_tac_toe/core_extensions.rb"
	ruby "-w lib/tic_tac_toe/game.rb"
end

desc "Run tests on caesar's cipher"
RSpec::Core::RakeTask.new(:spec) do |t|
	t.rspec_opts = "-c -w"
	t.verbose = false
end