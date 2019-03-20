require( 'sinatra')
require('sinatra/contrib/all')
# require( 'pry.bye-bug')
require_relative('./models/rps')
also_reload('./models/*')

get '/' do
  erb( :play_game )
  # p params
end

get '/rps' do
  p 'made it'
# stuck getting params values from the querystring
  # matches "GET /posts?title=foo&author=bar"
  player1_choice = params['player1'].to_i
  player2_choice = params['player2'].to_i
# @player1_choice = player1_choice
# @player2_choice = player2_choice
@rps1 = RPS.new(player1_choice, player2_choice)
@winner = @rps1.who_won
@p1_choice = @rps1.show_player_choice(player1_choice)
@p2_choice = @rps1.show_player_choice(player2_choice)
@result_string = @rps1.winner_message(@winner)
erb( :result)
end
  
