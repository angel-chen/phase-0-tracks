require_relative 'hangman'

describe Hangman do
	let(:game) { Hangman.new }

	it "turns word into series of underscores separated by spaces" do 
		game.get_word("unicorn")
		expect(game.get_word("unicorn")).to eq "unicorn"
	end

	it "changes underscore into correctly guessed letter" do
		game.unhide_word("c")
		expect(game.unhide_word).to eq ["_ _ _ c _ _ _"]
	end

	it "gives congratulatory message for winning" do
		game.status("unicorn")
		expect(game.status).to eq "You are clearly a word guessing genius"
	end
end

