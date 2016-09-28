# Method to print a list and make it look pretty
# input: the list
# steps: go over each item in list and print out its key value pair using interpolation
# output: a sentence that contains each key and value pair.

def print_list(list)
	list.each do |item, quantity|
		puts "I am buying #{quantity} #{item}."
	end
end

# Method to create a list
#input: string of items separated by spaces (example: "carrots apples cereal pizza")
#steps: split the string into an array, store each item in hash
#set default quantity to 1
#print the list to the console
#output: hash

def list(string)	
	array = string.split(" ")
	hash = {}
	
	array.each do |item|
		hash[item] = 1
	end
	
	# p hash

	print_list(hash)
end

grocery_list = list("carrots apples cereal pizza")

# Method to add or remove an item to a list
#input: list, item name, and optional quantity and/or actual quantity
#steps: add item onto list and return list
#output: hash

def add_or_update(list, item, quantity = 2.45)
	list[item] = quantity
	list
end

add_or_update(grocery_list, "beans", 3)
add_or_update(grocery_list, "pizza", 5)

# Method to remove an item from the list
#input: list and item
#steps: using the list, delete the item that is passed in
#output: return list with deleted item

def remove(list, item)
	list.delete(item)
	list
end

remove(grocery_list, "beans")

# Method to update the quantity of an item

# def update(list, item, quantity)
# 	list[item] = quantity
# 	list
# end

# update(grocery_list, "pizza", 5)

# def print_list(list)
# 	list.each do |item, quantity|
# 		puts "I am buying #{quantity} #{item}."
# 	end
# end

# print_list(grocery_list)

new_groceries = list("Lemonade Tomatoes Onions IceCream")
add_or_update(new_groceries, "Lemonade", 2)
add_or_update(new_groceries, "Tomatoes", 3)
add_or_update(new_groceries, "IceCream", 4)
remove(new_groceries, "Lemonade")

print_list(new_groceries)

# Release 4: Reflection

# What did you learn about pseudocode from working on this challenge?
# Psedocoding is about writing the steps you take to get to a solution and not just broad brushstrokes.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays can only store one value after another
# Hashes have key value pair and you can locate a value by it's key.

# What does a method return?
# Method returns the last line of code within the method block.

# What kind of things can you pass into methods as arguments?
# #You can pass in hashes, strings, numbers

# How can you pass information between methods?
#You can call a method inside another method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I have a better understanding of how methods work together with one another.
# Calling method inside another method is still difficult to grasp. 






