class Santa
	
	attr_reader :age, :ethnicity
	attr_accessor :gender
	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def celebrate_birthday
		@age = rand(0..140)
	end
	
	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.push(name)
	end
	
	# def gender=(new_gender)
	# 	@gender=new_gender
	# end
	
	# def age
	# 	@age
	# end
	
	# def ethnicity
	# 	@ethnicity
	# end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie}!" 
		puts
	end
	
end

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "How many Santas would you like?"
answer = gets.to_i

answer.times do
	santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

santas.each do |santa|
	puts
	puts "Santa is #{santa.gender} gender and #{santa.ethnicity} ethnicity. Santa is #{santa.celebrate_birthday} year old."
	puts
end

# Release 2: Testing getter and setter methods
# one_santa = Santa.new("female", "asian")
# one_santa.celebrate_birthday
# one_santa
# one_santa.get_mad_at("Vixen")
# one_santa
# one_santa.gender = "male"
# one_santa
# one_santa.age
# one_santa.ethnicity

# Release 1: Diverse Initialization 

# santas = []

# santas << Santa.new("female", "asian")
# santas << Santa.new("male", "italian")
# santas << Santa.new("female", "black")
# santas << Santa.new("male", "greek")
# santas << Santa.new("female", "latino")
# santas << Santa.new("male", "spanish")
# santas << Santa.new("female", "french")