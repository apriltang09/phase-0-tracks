class Santa
	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie}!" 
	end
	
end

# one_santa = Santa.new
# one_santa.speak
# one_santa.eat_milk_and_cookies("chocolate chip cookie")

santas = []

santas << Santa.new("female", "asian")
santas << Santa.new("male", "italian")
santas << Santa.new("female", "black")
santas << Santa.new("male", "greek")
santas << Santa.new("female", "latino")
santas << Santa.new("male", "spanish")
santas << Santa.new("female", "french")