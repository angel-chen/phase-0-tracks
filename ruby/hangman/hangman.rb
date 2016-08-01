class Hangman
	attr_reader :is_over, :guess_count, :hidden, :guess
	attr_accessor :word, :guessed_letters

	def initialize(word)
		@word = word
		@is_over = false
		@guess_count = word.length
		@guessed_letters = []
		@hide = "_ "
	end

#Hide the word and replace with underscores
	def hide_word
		@word = word
		@hide = @hide * @word.length
		@hide = @hide.split(" ").join(" ")
	end

#Unhide word if letter guess is correct
	def unhide_word(guess)
		i = 0
		while i < @word.length
			if @word[i] == guess
				@hide[i] = guess
			end
			i+=1
		end
		return @hide
	end

#Check if word has been guessed, letter is in guessed letters or if there are no more guesses left
	def check_word(guess)
		if guess == @word
			@is_over = true
			p "You are clearly a word guessing genius."
		elsif @word.include?(guess)
			@guessed_letters << guess
			p "Getting closer to solving."
		elsif @guessed_letters.include?(guess)
			p "You already tried that letter."
		elsif @guess_count == 0
			@is_over = true
			p "Better luck next time, loser."
		else 
			@guess_count -= 1
			p "Guess another letter."
		end
	end

end

#DRIVER CODE
# game = Hangman.new("unicorn")
# game.hide_word

puts "Please give me a word to start the game."
word = gets.chomp

game = Hangman.new(word)
puts game.hide_word

# while !game.is_over
# 	puts "Please guess the word or letter in the word"
# 	guess = gets.chomp

# 	puts game.check_word(guess)
# 	puts game.unhide_word(guess)
# end