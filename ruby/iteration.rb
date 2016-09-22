#RELEASE 0
def say_goodbye
	puts "This is printing from the method."
	yield ("Angela")
	yield ("Bianca")
	puts "This is printing from the method again."
end

say_goodbye {|name| puts "Talk to you soon, #{name}!"}

# This is printing from the method.
# Talk to you soon, Angela!
# Talk to you soon, Bianca!
# This is printing from the method again.

#RELEASE 1
#ARRAY
#.EACH doesn't change the original array
#.MAP! changes the original array
#HASH
#.EACH doesn't change the original hash
#.MAP! can't be used on hashes
#.MAP will not change the original hash
#if .MAP is stored in a variable, it DOESN'T WORK will only change the keys with the update

#.EACH doesn't change the original array
dogs = ["black spaniel", "white poodle", "golden retriever"]

puts "Original dog array:"
p dogs
# Original dog array:
# ["black spaniel", "white poodle", "golden retriever"]

dogs.each do |dog|
	dog.capitalize
end

puts "After .each used on array:"
p dogs
# After .each used on array:
# ["black spaniel", "white poodle", "golden retriever"]

#.MAP! changes the original array
puts "Original dog array:"
p dogs
# Original dog array:
# ["black spaniel", "white poodle", "golden retriever"]

dogs.map! do |dog|
	dog.upcase
end

puts "After .map! used on array:"
p dogs
# After .map! used on array:
# ["BLACK SPANIEL", "WHITE POODLE", "GOLDEN RETRIEVER"]

#HASH
#.EACH doesn't change the original hash
#.MAP! can't be used on hashes
#.MAP will not change the original hash
#if .MAP is stored in a variable, it DOESN'T WORK will only change the keys with the update

cats = {
	"bobbie" => "brown",
	"angelica" => "white",
	"tabitha" => "spotted",
	"samantha" => "red"
}

#.EACH doesn't change the original hash
puts "Original cat hash: "
p cats
# Original cat hash: 
# {"bobbie"=>"brown", "angelica"=>"white", "tabitha"=>"spotted", "samantha"=>"red"}

cats.each do |cat, color|
	cat.capitalize
end

puts "After .each used on hash:"
p cats
# After .each used on hash:
# {"bobbie"=>"brown", "angelica"=>"white", "tabitha"=>"spotted", "samantha"=>"red"}

#.MAP! can't be used on hashes

puts "Original cat hash: "
p cats
# Original cat hash: 
# {"bobbie"=>"brown", "angelica"=>"white", "tabitha"=>"spotted", "samantha"=>"red"}

cats.map! do |cat, color|
	cat.upcase
end

puts "After .map! used on hash:"
p cats
# undefined method `map!' for #<Hash:0x005617ca0bf9e0>
# Did you mean?  map
# (repl):44:in `<main>'

puts "Original cat hash: "
p cats
# Original cat hash: 
# {"bobbie"=>"brown", "angelica"=>"white", "tabitha"=>"spotted", "samantha"=>"red"}

update = cats.map do |cat, color|
	cat.upcase
end

puts "After .map used on hash:"
p cats
p update
# After .map used on hash:
# {"bobbie"=>"brown", "angelica"=>"white", "tabitha"=>"spotted", "samantha"=>"red"}
# ["BOBBIE", "ANGELICA", "TABITHA", "SAMANTHA"]



