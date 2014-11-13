require 'sinatra'
require 'cowsay'

get '/' do
  [ "<pre>", Cowsay.say(Time.now.to_s), "</pre>" ].join("\n")
end
