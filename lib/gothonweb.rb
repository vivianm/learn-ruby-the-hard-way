require_relative "gothonweb/version"
require "sinatra"
require "erb"

module Gothonweb
  print '/' do
    greeting = "Hello, World!"
    erb :index, :locals => {:greeting => greeting} 
  end
end