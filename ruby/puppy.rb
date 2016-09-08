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

class Cat
	def sound(string)
		puts string
	end
end

betsie = Cat.new
betsie.sound("meow!")