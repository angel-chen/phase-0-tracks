#- Create method for encryption
#- Shift every letter 1 letter forward in alphabet

#- Create method to reverse encryption, make decryption
#- Shift every letter 1 letter backwards in alphabet


secret = "pot helm"

def encryption (x)
	size = 0

	while size < x.length	
		if x[size].match(/\s/)
			puts x[size]
			size+=1
		else	
		puts x[size].next
		size+=1
		end
	end
end

puts encryption(secret)

def decryption (x)
	size = 0
	while size < x.length
		puts (x[size].ord-1).chr
		size+=1
	end

end

puts decryption(secret)