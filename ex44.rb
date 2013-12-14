# This creates a class named Child but there's nothing new to define in it. Instead inherits all of its behavior from Parent
class Parent

	def implicit()
		puts "PARENT implicit()"
	end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()		  