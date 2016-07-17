#- Create method for encryption
#- Shift every letter 1 letter forward in alphabet

#- Create method to reverse encryption, make decryption
#- Shift every letter 1 letter backwards in alphabet


secret = "pot helm"

def encryption (x)
	size = 0

	while size < x.length	
		puts x[size].next
		size+=1
	end
end

puts encryption(secret)
