

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
elsif (age_test == false && garlic_bread == false) || insurance == false
	puts  "Probably a vampire."
elsif age_test == false && garlic_bread == false && insurance == false
	puts "Almost certainly a vampire."
elsif name_test == true
	puts "Definitely a vampire"
else
	puts "Results inconclusive"
end