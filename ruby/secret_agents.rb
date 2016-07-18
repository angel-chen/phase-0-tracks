#Logan Graves and Angel Chen

=begin
Password encryption and decryption interface for Users
-Ask user whether they want to encrypt or decrypt 
-Check if user specified encryption or decryption
-Ask user for Password
-Conduct encryption or decryption based on earlier input
-Print result to screen

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


#METHOD DECLARATIONS

#Encrypts input
def encryption (str)
	size = 0
	#Loops until all letters are encrypted
	while size < str.length	
		#Checks for blank spaces match. Then prints space. Moves to next index.
		if str[size] == " "
			str[size]
		#Checks for match to z. Adds conditional change to proper result. Moves to next index.
		elsif str[size].match("z")
			str[size] ="a"
		#Prints next letter. Moves to next index.
		else	
			str[size].next
		end
		size+=1
	end	
	str
end

#Decrypts Input
def decryption (str)
	
	size = 0
	#Loops until all letters are decrypted.
	while size < str.length
		#Checks for match to a. Adds conditional change to proper result. Moves to next index.
		if str[size].match("a")
			str[size] = "z"
			size+=1
		#Prints previous letter. Moves to next index.
		else
			(str[size].ord-1).chr
			size+=1
		end
		
	end
	str
end

p encryption("abc")
p encryption("zed")
#p decryption("bcd")
#p decryption("afe")
#p decryption(encryption("swordfish"))

=begin The nested method works because the first method passes along a string value to the second method. There are no variables called from within either method to the other so there are no conflicts.
=end

#DRIVER CODE

#Loops and asks user for encrypt or decrypt until it receives the proper input.

puts "Do you want to encrypt or decrypt?"

password_action = gets.chomp

until password_action.downcase == "encrypt" || password_action == "decrypt"
	puts "Did you mean encrypt or decrypt?"	
	password_action = gets.chomp
end

puts "What is your password?"

password = gets.chomp

if password_action == "encrypt"
	p encryption(password)
elsif password_action == "decrypt"
	p decryption(password)
end

