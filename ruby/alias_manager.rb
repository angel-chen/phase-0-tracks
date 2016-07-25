=begin
	- Convert to array of words
	- Swap first and last name
	- Change everything to lowercase
	- Convert to array of letters
	- Change all vowels to next vowel in 'aeiou'
	- Change all consonants to next consonant in 'bcdfghjklmnpqrstvwxyz'
	- For vowel 'u', return 'a'
	- For consonant 'z', return 'b' 
	- Capitalize result
=end

name = "Felicia Torres"

def create_alias(name)
	
	spy_name = name.split(' ')
	spy_name[0], spy_name[1] = spy_name[1], spy_name[0]
	spy_name = spy_name.join(' ').downcase.chars

	vowel = %w[a e i o u]
	consonant = %w[b c d f g h j k l m n p q r s t v w x y z]

	i = 0

		while i < name.length

			spy_name = name[i].chars

			spy_name.each_index{|letter|
				if each do |letter|
				
				# elsif letter == " "
				# 	letter
				# elsif letter == "z"
				# 	letter = "b"
				# elsif letter == "u"
				# 	letter = "a"
				# end
			index+=1
		 	end
		end
end

			

end

p create_alias(name)