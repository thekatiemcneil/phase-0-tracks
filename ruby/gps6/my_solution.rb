# Virus Predictor

# I worked on this challenge with Hugo Chen.
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
# Require_relative: allowing you to load a file that is relative to the file contining or can handle the parths relative to current directory
# Require: is taking using other data
require_relative 'state_data'

class VirusPredictor
  # initialize the instance variable and attribute value
  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[state_of_origin][:population]
    @population_density = STATE_DATA[state_of_origin][:population_density]
  end

# call the other two methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # create method that calculate and do the predicted of deaths and basedupon the population_density and population
  def predicted_deaths
    # predicted deaths is solely based on population density

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

# ccalculate the speed of spread basedupon the population density and population
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
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

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each_key do |state|
   VirusPredictor.new(state).virus_effects
end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  # There two different hash syntaxes are based upon if they are storing strings or symbols. The hashes that store strings use the rocket to supply data. The hashes that use symbols use a colon to supply the data. In our GPS, we talked about the benefit of using symbols when able, as they are only produced one time rather than strings, which produce a new copy of the data every time they are called upon.

# What does require_relative do? How is it different from require?
  # Require relative is used to call upon a local file stored within the same directory. Meanwhile, require is used to call upon a file that may not be local, to load it and allow it to function within the code being written.

# What are some ways to iterate through a hash?
  # Some options to iterate through a hash are utilizing .each,.each_key and .each_value.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # I enjoyed seeing that you didn't actually need to include the variables, because the driver code we were using imported the data from the state_data file and assigned it to the attributes for each state. So, the way that the code was originally written to include elements was pretty useless.

# What concept did you most solidify in this challenge?
  # I found this challenge to be really helpful in analyzing and refactoring code in order to make it more readable/simple. So much of what was originally in the code was redundant and unnessesary. It was great to see it get smaller and smaller yet perform the same functions.

  # John, thanks so much for taking the time to go into detail with us about the 'why' of what we were doing! And, thanks for adding a little bit extra onto the challenge to further demonstrate the things we were learning. I really appreciate it!!
