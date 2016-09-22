#RELEASE 0
def say_goodbye
	puts "This is printing from the method."
	yield ("Angela")
	yield ("Bianca")
	puts "This is printing from the method again."
end

say_goodbye { |name| puts "Talk to you soon, #{name}!" }

# This is printing from the method.
# Talk to you soon, Angela!
# Talk to you soon, Bianca!
# This is printing from the method again.

#RELEASE 1
#.EACH doesn't change the original array
dogs = ["black spaniel", "white poodle", "golden retriever"]

puts "Original dog array:"
p dogs
# Original dog array:
# ["black spaniel", "white poodle", "golden retriever"]

dogs.each do |dog|
	dog.capitalize
end

puts "After .each used:"
p dogs
# After .each used:
# ["black spaniel", "white poodle", "golden retriever"]

#.MAP! changes the original array
puts "Original dog array:"
p dogs
# Original dog array:
# ["black spaniel", "white poodle", "golden retriever"]

dogs.map! do |dog|
	dog.upcase
end

puts "After .map! used:"
p dogs
# After .map! used:
# ["BLACK SPANIEL", "WHITE POODLE", "GOLDEN RETRIEVER"]



