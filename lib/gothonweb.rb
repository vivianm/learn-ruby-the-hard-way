require_relative "gothonweb/version"
require "sinatra"
require "erb"

module Gothonweb
	get '/' do
  # Your code goes here...
      greeting = "Hello, World!"
      erb :index, :locals => {:greeting => greeting} 
    end  

    get '/hello' do
    	erb :hello_form
    end

    post '/hello' do	
    	greeting = "#{params[:greet] || "Hello"}, #{params[:name] || "Nobody"}"
    	greeting = "hello, #{name}"
    	erb :index, :local => {:greeting => greeting} 
    end	
end
