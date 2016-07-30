class Santa
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age

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

	def celebrate_birthday
		@age+=1
	end

	def get_mad_at(reindeer)
		if @reindeer_ranking.include?(reindeer)
			@reindeer_ranking.delete(reindeer)
			@reindeer_ranking << reindeer
		end
	end

end

#New instance of Santa class
new_santa = Santa.new("female", "Japanese")

#DRIVER CODE
new_santa.speak
new_santa.eat_milk_and_cookies("sugar cookie")

new_santa.celebrate_birthday
new_santa.get_mad_at("Vixen")
p new_santa.reindeer_ranking

new_santa.gender = "transgender"
p new_santa.gender
p new_santa.age
p new_santa.ethnicity


#Array for Santas
santas = []

#Array for different genders
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

#Array for different ethnicities
ethnicities = ["Italian", "Latino", "Greek", "Japanese-African", "prefer not to say", "Unicorn", "N/A"]

50.times do 
  santas << Santa.new(gender.sample, ethnicities.sample)
end


santas.each do |santa|
	santa.age = rand(0..140)
end

p santas