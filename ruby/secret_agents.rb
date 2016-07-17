#- Create method for encryption
#- Shift every letter 1 letter forward in alphabet

#- Create method to reverse encryption, make decryption
#- Shift every letter 1 letter backwards in alphabet


def encryption (x)
	size = 0

	while size < x.length	
		if x[size].match(/\s/)
			puts x[size]
			size+=1
		elsif x[size].match("z")
			puts "a"
			size+=1
		else	
		puts x[size].next
		size+=1
		end
	end
end


def decryption (x)
	size = 0
	while size < x.length
		if x[size].match("a")
			puts "z"
			size+=1
		else
			puts (x[size].ord-1).chr
			size+=1
		end
	end

end

encryption("abc")
encryption("zed")
decryption("bcd")
decryption("afe")