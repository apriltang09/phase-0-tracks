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
		@age = @age + 1
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
	
	def eat_milk_and_cookies(type_of_cookie, helper)
		puts "That was a good #{type_of_cookie}!" 
		puts "Thank you #{helper} for helping!"
		puts
	end
	
end

# one_santa = Santa.new("female", "asian")
# one_santa.celebrate_birthday
# one_santa.get_mad_at("Vixen")
# one_santa.gender = "male"
# one_santa

# one_santa.age
# one_santa.ethnicity

santas = []

santas << Santa.new("female", "asian")
santas << Santa.new("male", "italian")
santas << Santa.new("female", "black")
santas << Santa.new("male", "greek")
santas << Santa.new("female", "latino")
santas << Santa.new("male", "spanish")
santas << Santa.new("female", "french")