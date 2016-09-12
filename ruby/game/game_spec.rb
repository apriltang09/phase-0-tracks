require_relative 'game' 

describe Game do
	let (:new_game){Game.new(secret_word)}

	it "store the user input at initialization" do
		expect(new_game.secret_word.to eq "hello"
	end
end

#EXAMPLE RSpec
#describe Game do
#	let (:new_game){Game.new("hello")}
#
#	it "make sure the attribute word exists" do
#		expect(new_game.word).to eq "hello"
#	end
#end