puts "What is the hamster's name?"
	hamster_name = gets.chomp

puts "What is the hamster's squeaking volume?"
	squeaking = gets.chomp.to_i

puts "What is the hamster's fur color?"
	fur_color = gets.chomp

puts "Is the hamster good for adoption?"
	adoption = gets.chomp

puts "What is the hamster's estimated age?"
	age = gets.chomp.to_f

	if hamster_name.empty? 
		name = nil

	end

	if squeaking == 0
		squeaking = nil

	end
	
	if adoption.empty?
		adoption = nil
	end

	if age == 0
		age = nil
	end
