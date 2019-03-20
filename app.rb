require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name1])
    $player_2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @name1, @name2 = $player_1.name, $player_2.name
    @hp_p1, @hp_p2 = $player_1.hitpoints, $player_2.hitpoints
    erb :play
  end

  get '/attack' do
    @name1, @name2 = $player_1.name, $player_2.name
    $player_1.attack($player_2, 10)
    @hp_p1, @hp_p2 = $player_1.hitpoints, $player_2.hitpoints
    erb :attack
  end
end
