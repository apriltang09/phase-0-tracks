module Mixin
	def shout(words)
		puts "You, " + "#{words}" + "nowwww!"
	end
end

class Mom
	include Mixin
end

class Grandma
	include Mixin
end

mother = Mom.new
mother.shout("clean your room! ")
grandmother = Grandma.new
grandmother.shout("eat! ")

#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end
#
#	def self.yelling_happily(words)
#		words + "yayyy!!"
#	end
#end
#
#p Shout.yell_angrily("what the")
#p Shout.yelling_happily("Whoop dee doo! ")