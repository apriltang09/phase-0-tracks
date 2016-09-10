module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "yayyy!!"
	end
end

p Shout.yell_angrily("what the")
p Shout.yelling_happily("Whoop dee doo! ")