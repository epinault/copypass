require 'sinatra'

user = ARGV.shift
raise 'Missing required user' unless user

password = ARGV.shift
raise 'Missing required password' unless password

set :user, user
set :password, password
set :bind, '0.0.0.0'

get '/' do
  erb :index
end
