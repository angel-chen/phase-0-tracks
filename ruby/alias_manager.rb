=begin
	- Convert to array of words
	- Swap first and last name
	- Change everything to lowercase
	- Convert to array of letters
	- Change all vowels to next vowel in 'aeiou'
	- Change all consonants to next consonant in 'bcdfghjklmnpqrstvwxyz'
	- For vowel 'u', return 'a'
	- For consonant 'z', return 'b' 
	- Add exception for spaces
	- Capitalize result
=end

# name = "Felicia Torres"

def create_alias(name)
	
	spy_name = name.split(' ')
	spy_name[0], spy_name[1] = spy_name[1], spy_name[0]
	spy_name = spy_name.join(' ').downcase.reverse.chars

	vowel = %w[a e i o u]
	consonant = %w[b c d f g h j k l m n p q r s t v w x y z]

	index = 0

	while index < spy_name.length

		spy_name.each do |letter|
			letter.next
			end
		index+=1
	 	end
end

spy_names = {}
name = nil

while name != "quit" 
	puts "Enter a name. Type 'quit' when finished"
	name = gets.chomp

	if name == "quit"
		puts "Quitting program"
		break
	else
		create_alias(name)
		spy_alias = create_alias(name)

		spy_names[:"#{name}"] = spy_alias
	end
end

p spy_names