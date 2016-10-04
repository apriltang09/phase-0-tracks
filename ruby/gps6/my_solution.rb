
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative: implement this related filed, has to be in the same folder
# require: load ruby modules in additions to methods
#

require 'pry'
require_relative 'state_data'

class VirusPredictor
#defines instance variables when we initiate a new instance of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


#calling predicted_deaths method and speed_of_spread method
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private #can't read anything below private outside the class
#method that takes in instance variables and using the population value to 
#find the number of deaths and printing a statement 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
    	decimal = 0.4
    elsif @population_density >= 150
    	decimal = 0.3
    elsif @population_density >= 100
    	decimal = 0.2
    elsif @population_density >= 50
    	decimal = 0.1
    else
    	decimal = 0.05
    end

    number_of_deaths = (@population * decimal).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#method that takes in instance variables and using the population density to
#determine the speed that a disease would spread and prints a statment 
  def speed_of_spread #in months
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, value|
	VirusPredictor.new(state, value[:population_density], value[:population]).virus_effects
end


#=======================================================================
# Reflection Section