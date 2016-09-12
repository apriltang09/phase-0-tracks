class Santa

	attr_accessor :gender, :ethnicity

	def initialize(gender, ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak(string)
		p string
	end
	
	def eat_milk_and_cookies(type)
		p "That was a good #{type}"
	end
	
	def celebrate_birthday(age)
		age + 1
	end
	
	def get_mad_at(name)
		i = 0
		while i < @reindeer_ranking.length
			if @reindeer_ranking[i] == name
				@reindeer_ranking.delete(name)
				@reindeer_ranking.push(name)
			end
		i += 1
		end
		p @reindeer_ranking
	end
	
	def info(gender, ethnicity)
		p "Person One: #{@gender} and #{@ethnicity}"
		p "Person Two: #{gender} and #{ethnicity}!"
	end
end

christmas = Santa.new("MaLe", "Mexican")
christmas.speak("Ho, ho, ho! Haaaappy holidays!")
christmas.eat_milk_and_cookies("snickerdoodle")
christmas.info("MALE", "FRENCH")
christmas.get_mad_at("Vixen")

christmas.gender= "FeMALE"  
puts "I am #{christmas.gender}"
christmas.ethnicity= "Italian"
puts "My ethnicity is: #{christmas.ethnicity}."

##RELEASE 4

class Santa	
	def gender
		gender = ["agender", "female","bigender", "male", "female", "gender fluid", "N/A"]
		p gender.sample
	end
	
	def ethnicity
		ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		ethnicity = ethnicity.sample
		p ethnicity
	end
	
	def age
		old = rand(1..140)
		p old
	end
	
	i = 0 


while i <= 100
	claus = Santa.new
	claus.gender
	claus.ethnicity
	claus.age
	i += 1
end 
end