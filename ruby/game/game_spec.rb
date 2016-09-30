require_relative 'game'

describe Game do 
	let(:game) {Game.new("hola")}

	it "is initialized with a secret word" do
		expect(game.secret_word("hola")).to eq "hola"








end
