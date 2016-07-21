def fav_dogs
 puts "I love these doggies!"
 yield("teddy","stella")
end

fav_dogs { |dog1, dog2| puts "i love you #{dog1} & #{dog2}"}

circus_animals = ["lions", "tigers", "bears"]

domestic_animals = {
	dog: "poodle",
	cat: "tabby",
	fish: "goldfish"
}

p circus_animals

circus_animals.each {|animal| print animal, " are the best \n" }

p circus_animals

circus_animals.map! do |animal|
   puts animal
   circus_animals[1] = "camel"
end

p domestic_animals

domestic_animals.each do |animal, breed|
	puts "A type of #{animal} is a #{breed}"
end

