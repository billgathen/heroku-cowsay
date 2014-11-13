require 'sinatra'
require 'cowsay'

def default_saying
  "What should they say?"
end

get '/' do
  erb :index, locals: { output:  Cowsay.say(default_saying) }
end
