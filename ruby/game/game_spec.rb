require_relative 'game'

describe Game do 
	let(:game) {Game.new("hola")}

	it "stores the secret word upon initalization" do
		expect secret_word = "hola"
	end

	it "stores the guess count upon initialization" do
		expect(game.guess_count).to eq 4
	end

	it "stores an array the length of secret word upon initialization" do
		expect(game.fill_in).to eq ["_", "_", "_", "_"]
	end

	it "gives blanks when the letter is not the same as guess" do
		game.guessing_letter("b")
		expect(game.fill_in.join(' ')).to eq "_ _ _ _"
	end

	it "when a wrong letter has already been used" do
		game.guessing_letter("b")
		expect(game.fill_in.join(' ')).to eq "_ _ _ _"
	end

	it "when the letter is the same as guess" do
		game.guessing_letter("h")
		expect(game.fill_in.join(' ')).to eq "h _ _ _"
	end

	it "when the right letter has already been used" do
		game.guessing_letter("h")
		expect(game.fill_in.join(' ')).to eq "h _ _ _"
	end

	it "prints out the message for win" do
		game.guessing_letter("h")
		game.guessing_letter("o")
		game.guessing_letter("l")
		game.guessing_letter("a")
		expect(game.message).to eq "Winner!"
	end

	it "prints out a message for loss" do
		game.guessing_letter("b")
		game.guessing_letter("o")
		game.guessing_letter("a")
		game.guessing_letter("t")
		expect(game.message).to eq "Nope, better luck next time!"
	end
end
