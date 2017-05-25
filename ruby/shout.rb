# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + "You're the best! :)"
#   end
# end

# p Shout.yell_angrily("Hey hello")
# p Shout.yell_happily("Hey hello")

module Shout
  def yell_angrily(words)
    p words + "!!!" + ":( "
  end

  def yell_happily(words)
    p words + "!!!" + "You're the best! :)"
  end
end

class Child
  include Shout
end

class Mom
  include Shout
end

child = Child.new
child.yell_angrily("angry yell")
child.yell_happily("happy yell")

mom = Mom.new
mom.yell_happily("happy yell")
mom.yell_angrily("angry yell")