require 'sinatra'
require 'cowsay'

def default_saying
  Time.now.to_s
end

get '/' do
  erb :index, locals: { output:  Cowsay.say(default_saying) }
end
