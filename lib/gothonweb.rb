require_relative "gothonweb/version"
require "sinatra"

module Gothonweb
	get '/' do
  # Your code goes here...
      greeting = "Hello, World!"
      return greeting
    end  
end
