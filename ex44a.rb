# Using override Explicitly, when you want the child to behave differently.
class Parent

    def override()
        puts "PARENT override()"
    end
end

class Child < Parent
 
    def override()
        puts "CHILD override()" 
    end
end

dad = Parent.new()
son = Child.new()

dad.override()
son.override()           


# special case of overriding where you want to alter the behavior before or after you the parent class's version runs.
class Parent

	def altered()
	    puts "PARENT altered()"
	end
	
end

class Child < Parent

    def altered()
        puts "CHILD, BEFORE PARENT altered()"
        super()
        puts "CHILD, AFTER PARENT altered()"
    end
    
end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()         	   

# final version that shows each kind of interaction from inheritance in one file.
class Parent

    def override()
        puts "PARENT override()"
    end

    def implicit()
        puts "PARENT implicit()"
    end

    def altered()
        puts "PARENT altered()"
    end
end

class Child < Parent
    
    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "CHILD, BEFORE PARENT altered()"
        super()
        puts "CHILD, AFTER PARENT altered()"
    end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()  



# Using super() With initialize
class Child < Parent
	def initialize(self, stuff)
	    self.stuff = stuff
	    super()
	end
end	      