#PSEUDOCODE
#Person 1 prompt to enters secret word
#store in initialization: SECRET PASSWORD

#have an ARRAY with _ that match secret_word.length
#this has to be modifiable in other places

#Person 2 guess a letter
#GUESS: store their letter

#loop through secret_word to 
#see if secret_word[i] == guess

#if secret_word[i] == guess,
#go through ARRAY index _[i] and interchange the 
#letter at the same index as secret_word[i]

#put congrats if win
#put taunt if lose

class Game 

	attr_reader :secret_word, :array
	
	def initialize(secret_word)
		@secret_word = secret_word
		@array = Array.new(@secret_word.length, "_")
	end
	
	def find_letter(any_word)
		i = 0
		while i < @secret_word.length
			if @secret_word[i] == any_word
				@array[i] = @secret_word[i]
				p @array
			end
		i += 1
		end
	end

	def message
		if @array.join("") == @secret_word
			p "Congrats! You win!"
		else
			p "Better luck next time!"
		end
	end
end

# puts "Enter a secret word: "
# secret_word = gets.chomp
# new_game = Game.new(secret_word)

# i = 0
# while i < secret_word.length
# 	puts "Guess a letter: "
# 	guess = gets.chomp
# 	new_game.find_letter(guess)
# 	i += 1
# end

# new_game.message