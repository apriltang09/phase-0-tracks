class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(int)
  	int.times{puts "Woof!"}
  end
  def roll_over
  	puts "*rolls over*"
  end
  def dog_years(human_years)
  	dog_years = human_years*7
  end
  def  sit
  	puts "*dog sits*"
  end
  def initialize
  	puts "Initializing new puppy instance ..."
  end
end
ball = "ball"
fido = Puppy.new
fido.fetch(ball)
fido.speak(2)
fido.roll_over
puts fido.dog_years(10)
fido.sit

class Kitty
	def initialize
		puts "Initializing new kitty..."
	end
	def meow(int)
		int.times{puts "MEOW!"}
	end
	def scratch
		puts "You have been scratched"
	end
end
cats = []
for i in 1..50
	cats << Kitty.new
end
cats.each {|kitty|
	kitty.meow(1)
	kitty.scratch}