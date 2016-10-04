
# Virus Predictor

# I worked on this challenge [with: Justin Steensma].
# We spent [about 1] hour on this challenge.

# EXPLANATION OF require_relative
# require relative: implement this related filed, has to be in the same folder
# require: load ruby modules in additions to methods
# require 'pry'

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

# What are the differences between the two different hash syntaxes shown in the state_data file?
# To use the rocket symbol, you will need to have a string as a key.
# To retrieve the value, the syntax is hash_name['key']. 
# To add a new value, the syntax is the same, hash_name['key']. 

# To use the colon syntax, you do not need a string as a key. 
# To retrieve the value, the syntax is hash_name[:key].
# To add a new value, the syntax is the same, hash_name[:key].

# What does require_relative do? How is it different from require?
# Require_relative uploads the information from another file in the same folder.
# Require mean the file does not need to be in the same folder to upload but will need a path
# to get to the file you want to upload. 

# What are some ways to iterate through a hash?
# You can use different methods like .each ,.each_pair.
# To get all the keys or all the values only, use .each_key and .each_value respectively. 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Since instance variables are available throughout the class, we can eliminate the  
# parameters here because it only contains instance variables. 

# What concept did you most solidify in this challenge?
# There are different ways to write hashes and you can use a mixture of it to write
# more readable code. Also, you can chain methods. 







