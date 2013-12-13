## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal because dog is an Animal (object and class relates)
class Dog < Animal

	def initialize(name)
		## Name has-a Dog, just refers to Dog name
		@name = name
	end
end

## Cat is-a Animal, Cat is an animal (cat object and Animal class relates to each other)
class Cat < Animal
   
    def initialize(name)
        ##name has-a Cat, name and cat refers to each other
        @name = name
    end
end

## Person is-a 
class Person

    def initialize(name)
        ## Name has-a Person, Name and person refers to each other
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet 
end

## Employee is-a Person 
class Employee < Person

    def initialize(name, salary)
        ## Name has-a Person 
        super(name)
        ## Name has-a Salary (Person salary refers to a certain name)
        @salary = salary
    end

end

## Fish is-a
class Fish
end

## Salmon is-a Fish (Salmon and Fish are related to eaxh other)
class Salmon < Fish
end

## Halibut is-a Fish, (Halibut is a fish also, so relates to each other)
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a
satan = Cat.new("Satan")

## mary has-a Person
mary = Person.new("Mary")

## mary has-a pet
mary.pet = satan

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## frank has-a rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse has-a Salmon
crouse = Salmon.new()

## harry has-a Halibut
harry = Halibut.new()           		