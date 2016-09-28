module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	def self.yelling_happily(words)
		words + "yayayayayay!! Hip Hip Hoorray!"
	end
end

p Shout.yell_angrily("bleeep")
p Shout.yelling_happily("Hip Hip")