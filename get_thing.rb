# hash style
mystuff = {'apple' => "I AM APPLES!"}
puts mystuff['apple']

  # Module style
module Mystuff
	def MyStuff.apple()
	    puts "I AM APPLES!" 
	end

	#this is just a variable
	TANGERINE = "Living reflection of a dream"
end	  

# use that module with require and then access the apple function
require 'mystuff'

Mystuff.apple()
puts Mystuff::TANGERINE

# reference
mystuff['apple'] # get apple from hash
MyStuff.apple() # get apple from module
MyStuff::TANGERINE # same thing, it's just a variable