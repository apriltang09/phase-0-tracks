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
#ARRAY
#.EACH doesn't change the original array
dogs = ["black spaniel", "white poodle", "golden retriever"]

dogs.each do |dog|
	dog.capitalize
end

puts "Original dog array:"
p dogs
# Original dog array:
# ["black spaniel", "white poodle", "golden retriever"]

puts "After .each used:"
p dogs
# After .each used:
# ["black spaniel", "white poodle", "golden retriever"]

#.MAP! changes the original array
dogs.map! do |dog|
	dog.upcase
end

puts "Original dog array:"
p dogs
# Original dog array:
# ["black spaniel", "white poodle", "golden retriever"]

puts "After .map! used:"
p dogs
# After .map! used:
# ["BLACK SPANIEL", "WHITE POODLE", "GOLDEN RETRIEVER"]

#HASH

cats = {
	"bobbie" => "brown",
	"angelica" => "white",
	"tabitha" => "spotted",
	"samantha" => "red"
}

#.EACH doesn't change the original array
cats.each do |cat, color|
	cat.capitalize
end

puts "Original cat hash: "
p cats
# Original cat hash: 
# {"bobbie"=>"brown", "angelica"=>"white", "tabitha"=>"spotted", "samantha"=>"red"}

puts "After .each used:"
p cats
# After .each used:
# {"bobbie"=>"brown", "angelica"=>"white", "tabitha"=>"spotted", "samantha"=>"red"}

#.MAP! can't be used on hashes
cats.map! do |cat, color|
	cat.upcase
end

puts "Original cat hash: "
p cats
# Original cat hash: 
# {"bobbie"=>"brown", "angelica"=>"white", "tabitha"=>"spotted", "samantha"=>"red"}


puts "After .map! used:"
p cats
# undefined method `map!' for #<Hash:0x005617ca0bf9e0>
# Did you mean?  map
# (repl):44:in `<main>'







