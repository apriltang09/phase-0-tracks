class Santa
	
	def initialize
		puts "Initializing Santa instance ..."
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie}!" 
	end
	
end

one_santa = Santa.new

one_santa.speak
one_santa.eat_milk_and_cookies("chocolate chip cookie")