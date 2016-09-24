#take in a name
#change in into an array and switch the first and last name
#have a vowel array
#go through each character in name and see if there are any vowels
#that match the character
#if there is, reassign character to the vowel plus one over
#have a consonant array
#go through each character in name and see if there are any consonants that match the character
#if there is, reassign character to the consonant plus one over

final = {}

def swap(name)
	name = name.downcase.split(' ').reverse
	name = name.join(' ').split('')
	
	p name
	
  	vowels = ["a", "e", "i", "o", "u"]
  	consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	
	name.map! do |character|
		if character == "u"
			character = "a"
		elsif character == "z"
			character = "b"
		elsif vowels.include? (character)
			character = vowels[vowels.index(character) + 1]
		elsif consonant.include? (character)
			character = consonant[consonant.index(character) + 1]
		else
			character
		end
	end
	
	name = name.join('').split
	first_name = name[0].capitalize
	last_name = name[1].capitalize
	
	first_name + ' ' + last_name
end

# swap("Felicia Torres")

input = ""

while input != "quit"
	puts "Do you want a fake name? If not, type 'quit' to exit."
	input = gets.chomp
		if input == "yes"
			puts "What is the real first and last name?"
			real = gets.chomp
			final[real] = swap(real)
		else
			nil
		end
end
	final.each do |real, fake|
	puts "#{fake} is the fake name of #{real}."
end