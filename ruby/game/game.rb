class Game
	
	attr_reader :guess_count 
	
	def initialize(secret_word)
		@secret_word = secret_word
		@guess_count = @secret_word.length
		@fill_in = Array.new(@secret_word.length, '_')
	end
	
	def guessing_letter(guess)

		if !@secret_word.include? guess
			p @array.join(' ')
			@guess_count = @guess_count - 1
		end

		i = 0
		while i < @secret_word.length
			if guess == @fill_in[i]
				p "You already guessed that!"
				p @fill_in.join(' ')
				@guess_count
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