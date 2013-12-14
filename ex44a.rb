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