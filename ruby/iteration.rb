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

#RELEASE 2

#1. A method that iterates through the items, deleting any that meet a certain condition
#ARRAY
miles = [1, 3, 5, 7, 9]
miles.delete_if {|mile| mile > 5}
# => [1, 3, 5]
p miles
# [1, 3, 5]
# => [1, 3, 5]

#HASH
run = {
	'a'=> 'two',
	'b'=> 'four',
	'c'=> 'six'
}

run.delete_if {|letter, word| letter >= 'b'}
# => {"a"=>"two"}
p run
# {"a"=>"two"}
# => {"a"=>"two"}

#2. A method that filters a data structure for only items that do satisfy a certain condition
#ARRAY
numbers = [-2, -1, 0, 1, 2, 3, 4, 5]
numbers.keep_if {|num| num < 3}
# => [-2, -1, 0, 1, 2]
p numbers
# [-2, -1, 0, 1, 2]
# => [-2, -1, 0, 1, 2]

#HASH
numbers = {
	one: 1,
	two: 2,
	three: 3, 
	four: 4, 
	five: 5,
	six: 6,
	seven: 7, 
	eight: 8,
	nine: 9
}

p numbers.delete_if {|word, digit| digit > 5}
# {:one=>1, :two=>2, :three=>3, :four=>4, :five=>5}
p numbers
# {:one=>1, :two=>2, :three=>3, :four=>4, :five=>5}
# => {:one=>1, :two=>2, :three=>3, :four=>4, :five=>5}

#3. A different method that filters a data structure for only items satisfying a certain condition
#ARRAY
[29304, 9231, 120395, 9386, 19353].select {|digit| digit.odd?}
# => [9231, 120395, 19353]

#HASH
difficult_numbers = {
	pie_ish: 3,
	pound: 16,
	cup: 8,
	tablespoon: 5
}

difficult_numbers.select {|constant, num| num.odd?}
# => {:pie_ish=>3, :tablespoon=>5}
p difficult_numbers
# {:pie_ish=>3, :pound=>16, :cup=>8, :tablespoon=>5}
# => {:pie_ish=>3, :pound=>16, :cup=>8, :tablespoon=>5}

#4. A method that will remove items from a data structure until the 
# condition in the block evaluates to false, then stops (you may not 
# find a perfectly working option for the hash, and that's okay).

nums = [23, 568, 35, 890, 64 ,9]
nums.drop_while {|num| num < 600}
# => [890, 64, 9]
p nums
# [23, 568, 35, 890, 64, 9]
# => [23, 568, 35, 890, 64, 9]

