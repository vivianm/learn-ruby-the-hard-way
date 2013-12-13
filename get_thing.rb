# hash style
mystuff = {'apple' => "I AM APPLES!"}
puts mystuff['apple']

  # Module style
module Mystuff
	def Mystuff.apple()
	    puts "I AM APPLES!" 
	end
end	  

# use that module with require and then access the apple function
require 'mystuff'

Mystuff.apple()