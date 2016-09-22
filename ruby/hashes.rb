#ask designer for information about client
#convert to to_i when client information is a number
#save each piece of info in separate variable
#ask user if they want to update any information
#if yes, ask them what they want to update and what the 
#updated response is
#use hash key to update response

client_info = {}

puts "What is the client's name?"
client_info[:name] = gets.chomp

puts "What is the client's age?"
client_info[:age] = gets.to_i

puts "How many children do they have?"
client_info[:children] = gets.to_i

puts "What is the deco theme?"
client_info[:deco_theme] = gets.chomp

p client_info

puts "Do you want to update any information?(y/n)"
update = gets.chomp

if update == "y"
	puts "What would you like to update? name, age, children or deco theme info?"
	response = gets.chomp
		if response == "name"
			puts "What is the updated name?"
				client_info[:name] = gets.chomp
		elsif response == "age"
			puts "What is the updated age?"
				client_info[:age] = gets.to_i
		elsif response == "children"
			puts "How many children do they have?"
				client_info[:children] = gets.to_i
		elsif response == "deco theme"
			puts "What is the updated deco theme?"
				client_info[:deco_theme] = gets.chomp
		else
			nil
		end
		p client_info
else
	p client_info
end	