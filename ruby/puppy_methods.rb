class Puppy
	
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end
	
	def speak(integer)
		integer.times do
			puts "Woof!"
		end
	end
	
	def roll_over
		puts "*rolls over*"
	end
	
	def dog_years(num)
		final = num + 7
		final
	end
	
	def bark (volume)
		puts volume.upcase
	end
	
	def initialize
		puts "Initializing new puppy instance..."
	end
end

roxie = Puppy.new

#DRIVER CODE
roxie.fetch("ball")
roxie.speak(3)
roxie.roll_over
roxie.dog_years(2)
roxie.bark("i am being very quiet (not!)")

class Kitten
	
	def initialize
		puts "Meow!"
	end
	
	def play(string)
		puts "I like to play with #{string}."
	end

	def catch (num)
		fish = num * 10 
		puts "I hope to catch #{fish} fishes today."
	end
end

rocky = Kitten.new
rocky.play("yarn")
rocky.catch(50)


storage = []

i = 0

while i <= 50
	storage << Kitten.new
	i += 1
end

p storage

storage.each do |item|
	rocky.play("ball")
	rocky.catch(100)
end
