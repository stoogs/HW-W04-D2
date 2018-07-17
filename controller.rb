require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/game')

get '/home' do
erb :home  # file called result.erb in /views
end

get '/hand/:hand1/:hand2' do
  hand = Game.new( params[:hand1], params[:hand2])
  @hand_result = hand.result
erb :result  # file called result.erb in /views
end
