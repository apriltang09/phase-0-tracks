#ask designer for info about client
#save info as value in appropriate key 
#print hash out 
#print string asking if there is any redo?
#if no redo needed, print hash
#if designer wants to redo, prompt for new value, update the value and print hash

client_info = {}

puts "What is the client's name?"
name = gets.chomp
client_info[:name] = name

puts "How old is the client?"
age = gets.to_i
client_info[:age] = age

puts "How many children does the client have?"
children = gets.to_i
	if children == "none"
		children = 0
	end
client_info[:children] = children

puts "What is the decoration theme?"
deco_theme = gets.chomp
client_info[:deco_theme] = deco_theme

puts "Is the client married?"
married = gets.chomp
	if married == "yes"
		client_info[:married] = true
	else
		client_info[:married] = false
	end

puts "Is there anything that you want to update?(type 'none' if there is nothing to update)"
	update = gets.chomp
		if update == "none"
			puts client_info
		else
			puts "What did you want to update? name, age, children, decoration theme or marriage?"
				need_update = gets.chomp
					if need_update == "name"
						puts "What is the client's new name?"
						new_name = gets.chomp
						client_info[:name] = new_name
					elsif need_update == "age"
						puts "What is the client's new age?"
						new_age = gets.to_i
						client_info[:age] = new_age
					elsif need_update == "children"
						puts "How many children does the client have?"#!
						num_children = gets.to_i
						client_info[:children] = num_children
					elsif need_update == "decoration theme"
						puts "What is the updated decoration theme?"
						new_theme = gets.chomp
						client_info[:deco_theme] = new_theme
					else 
						puts "Is the client married?"
						update_marriage = gets.chomp
							if update_marriage == "yes"
								client_info[:married] = true
							else
								client_info[:married] = false
							end
					end
			puts client_info
		end