puts "How many employees will be processed?"
processed = gets.to_i

while processed > 0

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.to_i

	puts "What year were you born?"
	year = gets.to_i

	current_year = 2016

	if (current_year - age) == year
		age = true
	else
		age = false
	end

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp

	if 	name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
	elsif
		age == true && (garlic_bread == "yes" || insurance == "yes")
		puts "Probably not a vampire."
	elsif
		age == false && garlic_bread == "no" && insurance == "no"
		puts "Almost certainly a vampire."
	elsif 
		age == false && (garlic_bread == "no" || insurance.empty?)
		puts "Probably a vampire."
	else 
		puts "Results inconclusive."
	end

processed = processed - 1

puts "Please complete allergy info and type done when finished with survey. (Type 'ok' to start)."
user_input = gets.chomp

	while user_input != "sunshine" && user_input != "done"
		puts "Name one allergy: "
		user_input = gets.chomp
			if user_input == "sunshine"
				puts "Probably a vampire."
			end
	end

if user_input == "done"
	puts "Thank you."
end

end

puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."

