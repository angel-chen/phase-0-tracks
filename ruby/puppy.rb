=begin
SPECIES ------------------------
Puppy

CHARACTERISTICS ------------------------
Color: varies
Hair length: varies
Friendly: yes
Name: varies
Gives kisses: yes
Paper trained: no

BEHAVIOR ------------------------
Rambunctious
Chews on everything
Always looks cute
	
=end

class Puppy
  
  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(int)
    # puts "Woof! " * int
    int.times { |x| puts "Woof! " }
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(age)
    dog_age = age / 7
  end
  
  def play_dead
    puts "*plays dead*"
  end

end

class Kitten
  def initialize
    puts "Initializing new kitten instance..."
  end
  
  def knock_over(object)
    puts "I knocked over a #{object}"
    object
  end
  
  def clean
    puts "*cleans itself*"
  end
  
  def hairball 
    puts "*coughs up a hairball*"
  end
  
end


## DRIVER CODE

new_puppy = Puppy.new
new_puppy.fetch("ball")
new_puppy.speak(3)
new_puppy.roll_over
p new_puppy.dog_years(28)
new_puppy.play_dead

new_kitten = Kitten.new
new_kitten.knock_over("cup")
new_kitten.clean

