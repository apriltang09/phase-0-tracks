class Game
	
	attr_reader :guess_count
	
	def initialize(secret_word)
		@secret_word = secret_word
		@guess_count = @secret_word.length
		@array = []
	end
	
	def first_guess
		@array = Array.new(@secret_word.length, '_')
		p @array.join(' ')
	end
	
	def guess_right(guess)

		if !@secret_word.include? guess
			p @array.join(' ')
			@guess_count = @guess_count - 1
			return 
		end

		i = 0
		while i < @secret_word.length
			if guess == @array[i]
				p "You already guessed that!"
				p @array.join(' ')
				@guess_count
			elsif guess == @secret_word[i]
			@array[i] = @secret_word[i]
				 	p @array.join(' ')
					@guess_count = @guess_count - 1
		end
		@array
		i+= 1
		end
	end
	
	def message
		@array = @array.join
		if @array == @secret_word
			p "Winner!"
		elsif @array != @secret_word
			p "Nope!"
		end
	end
end