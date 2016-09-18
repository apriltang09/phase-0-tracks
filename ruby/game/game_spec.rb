require_relative 'game' 

describe Game do
	let (:new_game) {Game.new("hello")}

	it "stores the secret word upon initialization" do
		expect(new_game.secret_word).to eq "hello"
	end

	it "stores an array the length of secret word upon initialization" do
		expect(new_game.array).to eq ["_", "_", "_", "_", "_"]
	end

	it "when letter in secret word is same as guess" do
		new_game.find_letter("h")
		expect(new_game.array).to eq ["h", "_", "_", "_", "_"]
	end

	it "when letter in secret word is not the same as guess" do
		new_game.find_letter("x")
		expect(new_game.array).to eq ["_", "_", "_", "_", "_"]
	end

	it "prints out a message for win" do
		new_game.find_letter("h")
		new_game.find_letter("e")
		new_game.find_letter("l")
		new_game.find_letter("o")
		expect(new_game.message).to eq "Congrats! You win!"
	end

	it "prints out a message for loss" do
		new_game.find_letter("b")
		new_game.find_letter("e")
		new_game.find_letter("v")
		new_game.find_letter("l")
		new_game.find_letter("b")
		expect(new_game.message).to eq "Better luck next time!"
	end
end
