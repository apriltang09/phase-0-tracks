puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is the hamster? (1-10)"
volume = gets.to_i

puts "What is the hamster's fur color?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption?"
adoption = gets.chomp

puts "How old is the hamster?"
age = gets.chomp

if age.empty?
	age = nil
else
	age = age.to_i
end

puts "The hamster's name is #{name}."
puts "#{name}'s volume is #{volume}."
puts "#{name} fur is #{color}."

if adoption == "yes"
	puts "#{name} is a good candidate for adoption."
elsif adoption == "no"
	puts "#{name} is not a good candidate for adoption."
else
	puts "Adopt at your own risk!"
end

puts "#{name} is #{age}."

#I worked with Tim Tao in this pairing session @timctao#