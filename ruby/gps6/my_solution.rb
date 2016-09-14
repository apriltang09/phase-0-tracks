
# Virus Predictor

# I worked on this challenge [with: Jason @jpperlm].
# We spent [1] hour on this challenge.

# EXPLANATION OF require_relative
#
#
#The require_relative statement is essentially saying that we are grabbing all code from the other file
#This code is going to act as if it is in this file which we are working
#This is different than simple require because the files have to be in the same folder and requires less code

require_relative 'state_data'

class VirusPredictor

  #Initialize our VirusPredictor Object
  #Takes in the data from state_data.rb and saves the individual variables of
  #stateoforigin, pop_density, and population into insatance variables such that 
  #they are seeable by other behaviors in the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #runs the predicted_deaths and speed_of_spread
  #passes the instance variables into these methods
  def virus_effects
    print predicted_deaths
    puts speed_of_spread
  end

  private
  #compares the population_density to set values and creates a number_of_deaths variable
  #based on these values
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      percent = 0.4
    elsif @population_density >= 150
      percent = 0.3
    elsif @population_density >= 100
      percent = 0.2
    elsif @population_density >= 50
      percent = 0.1 
    else
      percent = 0.5  
    end
    number_of_deaths = (@population*percent).floor
    "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #compares the population_density to set values and creates a speed variable
  #based on these values
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, second_hash|
  VirusPredictor.new(state, second_hash[:population_density], second_hash[:population]).virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section

#There are two different way to write hashes, one with => and another with : 
#They both do the same thing.

#require_relative means that we are taking code from that file and putting 
#them into this file. require means that the file does not need to be in the
#same folder and we have to put down the path of the other file.

#.each and .each key

#the parameters all had instance variables which meant that they were not needed
#because the other methods already can see it

#instance variables can be seen by all methods


