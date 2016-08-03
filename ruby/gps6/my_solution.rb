# Virus Predictor

# I worked on this challenge [by myself, with: Per Ohrstrom].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require uses the current directory that you're running the program from
  # use require for external files
  # have to provide a longer file pass
  # can pull in specific modules
# require_releative uses the directory where the program resides
  #
require_relative 'state_data'

class VirusPredictor

# Calls the initialization of an instance, passing three variables
# Assigned Instance Variables to each passed in variable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
# Calls two methods, each passing their own variable
# Concatenates both method's strings
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

# passes three variables and calculates numbers of deaths based on if/elsif/else scenarios
# prints out the state and the number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    rate = nil
    
    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end
    
    number_of_deaths = (@population * rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# passes in two variables and calculates the speed of the virus spread using if/elsif/else conditions
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = nil
    x = @population_density

    if x >= 200
      speed = 0.5
    elsif x >= 150
      speed = 1
    elsif x >= 100
      speed = 1.5
    elsif x >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, pop_info|
        pop_info[:population_density]
        pop_info[:population]

        state_name = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])

        state_name.virus_effects

        end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
On the first level hash, it uses a string as the key, probably because it would look better when displayed. In the second level, symbols are used.

What does require_relative do? How is it different from require?
Require relative uses the directory where the program resides. It doesn't necessarily have to be in the same folder. Adjacent is fine too. 

Require uses the current directory that you're running the program from. General rule of thum is to reserve 'require' for external files. A longer file pass has to be provided and it is generally used to pull in specific modules.

What are some ways to iterate through a hash?
Using .each or .map are some ways to iterate through a hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?
The variables were called multiple times. It was already called during initialization, so it wasn't necessary to call them again.

What concept did you most solidify in this challenge?
I have a better understanding of nested hashes now.
  
=end