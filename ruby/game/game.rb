#PSEUDOCODE

#have user give a secret word, store the secret word
#set up guess count to keep track of how much guesses user has
#set up empty, blank array at the length of the secret word

#filter through the letter that the user is guessing
#if letter is not in secret word, provide array for reference, decrease guess count by one

#if letter has already been used, print out a statement letting user know, 
#provide array for reference

#if the letter is in secret word, put letter in the blank array at the
#same place that secret word has that letter, provide array for reference,
#decrease guess count by one

#once guess_count is zero, provide message
#if array is the same as secret word, print win statement
#if array is the same as secret word, print lost statement

class Game
	
	attr_reader :secret_word, :guess_count, :fill_in
	
	def initialize(secret_word)
		@secret_word = secret_word
		@guess_count = @secret_word.length
		@fill_in = Array.new(@secret_word.length, '_')
	end
	
	def guessing_letter(guess)

		if !@secret_word.include? guess
			p @fill_in.join(' ')
			@guess_count = @guess_count - 1
		end

		i = 0
		while i < @secret_word.length
			if guess == @fill_in[i]
				p "You already guessed that!"
				p @fill_in.join(' ')
				# @guess_count
			elsif guess == @secret_word[i]
			@fill_in[i] = @secret_word[i]
				 	p @fill_in.join(' ')
					@guess_count = @guess_count - 1
			end
		@fill_in
		i+= 1
		end
	end
	
	def message
		@fill_in = @fill_in.join
		if @fill_in == @secret_word
			p "Winner!"
		elsif @fill_in != @secret_word
			p "Nope, better luck next time!"
		end
	end
end

puts "Please put a word for guessing"
word = gets.chomp

game = Game.new(word)

while game.guess_count > 0
	puts "Please guess a letter"
	letter = gets.chomp
	game.guessing_letter(letter)
end

game.message