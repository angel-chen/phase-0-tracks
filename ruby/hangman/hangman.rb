#Angel Chen
#6.6 Solo Challenge

class Hangman
	attr_reader :word, :is_over, :guess_count, :guessed_letters, :word_length, :hidden_word

	def initialize
		puts "Starting Hangman game..."

		@word = ""
		@is_over = false
		@guess_count = 0
		@guessed_letters = nil
		@word_length = 0
		@hidden_word = " _ "
	end

	def get_word(word)
		@word = word
		@length = @word.length
		@hidden_word = @hidden_word * @length
		@hidden_word = @hidden_word.chop.split(" ")
		p @hidden_word
		p @word
	end

	

end

#DRIVER CODE
game = Hangman.new

game.get_word("unicorn")
