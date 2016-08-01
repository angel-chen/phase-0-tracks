#Angel Chen
#6.6 Solo Challenge

=begin
On Initialization
	-Set variable for word to be guessed
	-Set default variable for game over to be false
	-Set guess count to word length
	-Set array for guessed letters

Hiding Word
	-Get user word
	-Change word to underscore with spaces

Guessing Word
	-Check user entered guess against word
	-Send guessed letter into guessed letter array
	-If guessed letter is in word, replace underscore
	-Subtract guess count if guessed letter is wrong
	-If guessed letter is already in guessed letter array, ask for another letter but do not increase guess count
	-Game is lost if guesses are more than word length

Interface
-User can enter a word
-Word is replaced with _ _ _ _ _ _ _ depending on length of word at beginning of game (unicorn)
	-Letters start appearing when correct (_ _ _ c _ _ _) - letter C
-Another user attempts to guess
-Number of guesses limited to length of the word
-Guesses stored in array
-Repeated guesses do not count against the user
-Congratulatory message if they win - You are clearly a word guessing genius
-Taunting message if they lose - Better luck next time, loser.
		

=end

class Hangman
	attr_reader :is_over, :guess_count
	attr_accessor :word, :guesses, :hide

	def initialize(word)
		@word = word
		@is_over = false
		@guess_count = word.length
		@guessed_letters = []
	end

#Hide the word and replace with underscores
	def hide_word
		@word = word.split("")
		@hide = @word.map do |letter| 
			letter = "_"
		end
		
	end

#Unhide word if letter guess is correct
	def unhide_word(guess)
		@word.map do |letter|
		 	if @guessed_letters.include?(letter)
		 		@hide = letter + " "
		 	else
		 		@hide = "_"
		 	end
		 end
		# i = 0
		# while i < @word.length
		# 	if @word[i] == guess
		# 		@hide[i] = guess
		# 	end
		# 	i+=1
		# end
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
		elsif 
			@guess_count -= 1
			p "Guess another letter."
		else @guess_count == 0
			@is_over = true
			p "Better luck next time, loser."
		end
	end

end

#DRIVER CODE
# game = Hangman.new("unicorn")
# game.hide_word

# puts "Please give me a word to start the game."
# word = gets.chomp

# game = Hangman.new(word)
# puts game.hide_word.join(" ")

# while !game.is_over
# 	puts "Please guess the word or letter in the word"
# 	guess = gets.chomp

# 	puts game.check_word(guess)
# 	puts game.unhide_word(guess)
# end