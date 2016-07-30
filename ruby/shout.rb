module Shout
  def self.yell_angrily(words)
    words  + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words.upcase + "!!!" + " :D"
  end
end

#DRIVER CODE
p Shout::yell_angrily("NO")
p Shout::yelling_happily("yay")