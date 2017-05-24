module Shout
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end

  def self.yell_happily(words)
    words + "!!!" + "You're the best! :)"
  end
end

p Shout.yell_angrily("Hey hello")
p Shout.yell_happily("Hey hello")