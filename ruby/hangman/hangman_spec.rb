require_relative 'hangman'

describe Hangman do
	let(:game) { Hangman.new("unicorn")}

	it "turns word into series of underscores separated by spaces" do 
		expect(game.hide_word.join(" ")).to eq "_ _ _ _ _ _ _"
	end

	it "changes underscore into correctly guessed letter" do
		game.check_word("unicorn")
		expect(game.unhide_word("c")).to eq ["_ _ _ c _ _ _ "]
	end

	it "gives congratulatory message for winning" do
		game.check_word("unicorn")
		expect(game.check_word("unicorn")).to eq "You are clearly a word guessing genius."
	end
end

