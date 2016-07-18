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
def encryption (x)
	size = 0
	#Loops until all letters are encrypted
	while size < x.length	
		#Checks for blank spaces match. Then prints space. Moves to next index.
		if x[size].match(/\s/)
			print x[size]
			size+=1
		#Checks for match to z. Adds conditional change to proper result. Moves to next index.
		elsif x[size].match("z")
			print x[size] = "a"
			size+=1
		#Prints next letter. Moves to next index.
		else	
			print x[size].next
			size+=1
		end
	end	
	#Adds a new line.
	print "\n"
end


#Decrypts Input
def decryption (x)
	
	size = 0
	#Loops until all letters are decrypted.
	while size < x.length
		#Checks for match to a. Adds conditional change to proper result. Moves to next index.
		if x[size].match("a")
			print x[size] = "z"
			size+=1
		#Prints previous letter. Moves to next index.
		else
			print (x[size].ord-1).chr
			size+=1
		end	
	end
	print "\n"
end

#encryption("abc")
#encryption("zed")
#decryption("bcd")
#decryption("afe")
#decryption(encryption("swordfish"))

=begin The nested method does not work because it cannot call the value from within the inner method and use it within the outer method.
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
	encryption(password)
elsif password_action == "decrypt"
	decryption(password)
end

