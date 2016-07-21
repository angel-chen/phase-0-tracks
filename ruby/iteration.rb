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

numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#numbers.each do |number|
#	p numbers.delete_if {|number| number <5}
#end


#result = numbers.select {|number|
#	number < 5}
#p result

#result = numbers.reject { |number| number.odd?}
#p result

#result = numbers.delete_if { |number| number.even?}
#p result

letters = {
	a: "Amelia", 
	b: "Brian",
	c: "Christina",
	d: "David"
}

#result = letters.delete_if { |letter, name| name == "David"}
#p result

#result = letters.select { |letter, name|  name == "Amelia" || name =="David"}
#p result

#result = letters.reject { |letter, name| name == "Amelia"}
#p result