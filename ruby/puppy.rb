#SPECIES (class - blueprint)
#	Canine

#CHARACTERISTICS (attributes)
#	Color: varies
#	Fur: thick
#	Eye color: black


#BEHAVIOR (methods)
#	Bark
#	Swim
#   Jump

#Class - a container that holds characteristics (attributes) and behavior (methods).

class Dog
	def sound(string)
		puts string
	end
end

max = Dog.new
max.sound("woof! woof!")