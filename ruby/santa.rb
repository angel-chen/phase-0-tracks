class Santa
	def initialize (gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
end

#New instance of Santa class
new_santa = Santa.new("female", "Japanese")

#DRIVER CODE
new_santa.speak
new_santa.eat_milk_and_cookies("sugar cookie")

#Array for Santas
santas = []

#Array for different genders
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

#Array for different ethnicities
ethnicities = ["Italian", "Latino", "Greek", "Japanese-African", "prefer not to say", "Unicorn", "N/A"]

gender.length.times do |i|
  santas << Santa.new(gender[i], ethnicities[i])
end

p santas