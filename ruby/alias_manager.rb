#Ask the user if they want a fake name, use a loop to keep asking if they want a fake name
#if yes, ask them what the real name is
#then split the name into letters and have each letter move to the next letter
#then join them together to get the fake name
#exit the loop when the user says 'quit'
#do a method on the array that prints out the final data in a sentence. 


input = " "
final = []

def fake_name(name, final)
	name = name.split('')
	name.map! do |letter|
		if letter == " "
			letter = ' '
		else
			letter.next
		end
	end
		name = name.join('')
		final << name
end
		
while input != "quit" 
	puts "Do you want a fake name? (yes/no)"
	input = gets.chomp

	if input == "yes"
		puts "What is the real name?"
		real = gets.chomp
		fake_name(real, final)
	else
		puts "Please type 'quit' to exit the program."
		input = gets.chomp
		final
		
		final.each do |name|
			puts "#{name} is a fake name."
	end
break	
	end
end