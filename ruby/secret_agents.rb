#Logan Graves and Angel Chen

=begin
Create method for encryption
-Create variable for amount of letters.
-Find length of word
-Loop until all letters of the word have been encrypted
-Skip spaces and print them
-Print encryption

Create method to reverse encryption, make decryption
-Create variable for the amount of letters
-Find the length of the word
-Loop until all of the letters have been decrypted

=end



def encryption (str)
	size = 0

	while size < str.length	
		if str[size].match(/\s/)
			str[size]
			size+=1
		elsif str[size].match("z")
			str[size] ="a"
			size+=1
		else	
		str[size].next
		size+=1
		end
	end	
	str
end

def decryption (str)
	
	size = 0
	
	while size < str.length
		if str[size].match("a")
			str[size] = "z"
			size+=1
		else
			(str[size].ord-1).chr
			size+=1
		end
		
	end
	str
end

p encryption("abc")
p encryption("zed")
p decryption("bcd")
p decryption("afe")
p decryption(encryption("swordfish"))

=begin The nested method works because the first method passes along a string value to the second method. There are no variables called from within either method to the other so there are no conflicts.
=end
