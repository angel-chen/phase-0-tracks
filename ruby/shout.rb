# module Shout
#   def self.yell_angrily(words)
#     words  + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words.upcase + "!!!" + " :D"
#   end
# end

# #DRIVER CODE
# p Shout.yell_angrily("NO")
# p Shout.yelling_happily("yay")

module Shout
	def yelling(words)
		puts words.upcase + "!!!"
	end
end

class Amusement_park
	include Shout
end

class Bug_discovery
	include Shout
end


#DRIVER CODE
sixflags = Amusement_park.new
sixflags.yelling("wheeeeee")

roach = Bug_discovery.new
roach.yelling("kill it dead")