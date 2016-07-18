
puts "How many employees will be processed?"
	employ_num = gets.chomp.to_i

while employ_num !=0
	puts "What is your name?"
		name = gets.chomp.downcase

	puts "How old are you?"
		age = gets.chomp.to_i
		
	puts "What year were you born?"
		birth_year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
		garlic_bread = gets.chomp.downcase

	puts "Would you like to enroll in the company’s health insurance? (Y/N)"
		insurance = gets.chomp.downcase

	loop do
		puts "Please name any allergies"
		allergies = gets.chomp.downcase

		if allergies == "sunshine"
			allergies = true
			break
		end
	end

	current = 2016
	age_test = current - birth_year

	if age_test==age
		age_test = true
	else
		age_test = false
	end

	if ["drake cula", "tu fang"].include? "#{name}" == true
		name_test = true
	else 
		name_test = false
	end

	if garlic_bread == "yes" || garlic_bread == "y"
		garlic_bread = true
	else
		garlic_bread = false
	end

	if insurance == "yes" || insurance == "y"
		insurance = true
	else
		insurance = false
	end

	puts "Result:"

	if (age_test == true && garlic_bread == true) || insurance == true
		puts "Probably not a vampire" 
		employ_num -= 1
	elsif (age_test == false && garlic_bread == false) || insurance == false
		puts  "Probably a vampire."
		employ_num -= 1
	elsif age_test == false && garlic_bread == false && insurance == false
		puts "Almost certainly a vampire."
		employ_num -= 1
	elsif name_test == true
		puts "Definitely a vampire"
		employ_num -= 1
	elsif allergies == true
		puts "Probably a vampire"
		employ_num -= 1
	else
		puts "Results inconclusive"
		employ_num -= 1
	end

	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end