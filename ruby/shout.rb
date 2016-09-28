module Shout
	def yell_angrily(words)
		puts "#{words} !!!"
	end
end

class Mom
	include Shout
end

class Grandma
	include Shout
end

mom = Mom.new
mom.yell_angrily("bleeep")

grandma = Grandma.new
grandma.yell_angrily("HUMPH")

# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# 	def self.yelling_happily(words)
# 		words + "yayayayayay!! Hip Hip Hoorray!"
# 	end
# end

# p Shout.yell_angrily("bleeep")
# p Shout.yelling_happily("Hip Hip")