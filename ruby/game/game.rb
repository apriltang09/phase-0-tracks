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
	
	def initialize(secret_word)
		@secret_word = secret_word 
	end

	def secret_word
		@secret_word
	end
	
	def space
		array = []
		i = 0 
		while i < @secret_word.length
			array << "_"
			i += 1
		end
		@array = array
		p @array
	end
	
	def letter
		puts "Guess a letter:"
		@guess = gets.chomp
	end
	
	def find_letter
		i = 0
		while i < @secret_word.length
			if @secret_word[i] == @guess
				@array[i] = @secret_word[i]
				p @array
			end
		i += 1
		end
	end
	
	def split_secret_word
		p @secret_word = @secret_word.split("")
	end
	
	def message
		if @array == @secret_word
			p "Congrats! You win!"
		else
			p "Better luck next time!"
		end
	end
	
end

puts "Enter a secret word: "
secret_word = gets.chomp
new_game = Game.new(secret_word)

new_game.space

i = 0
while i < secret_word.length
	new_game.letter
	new_game.find_letter
	i += 1
end

new_game.split_secret_word
new_game.message

#EXAMPLE for RSpec test
#class Game
#
#	attr_reader :word
#
#	def initialize(word)
#		@word = word
#	end
#end

###DRIVER CODE
#puts "Person 1: Please enter a word"
#word = gets.chomp

#new_game = Game.new(word)