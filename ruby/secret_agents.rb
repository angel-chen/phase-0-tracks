#- Create method for encryption
#- Shift every letter 1 letter forward in alphabet

#- Create method to reverse encryption, make decryption
#- Shift every letter 1 letter backwards in alphabet


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