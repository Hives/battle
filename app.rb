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
    # session[:name1], session[:name2] = params[:name1], params[:name2]
    session[:hp_p1], session[:hp_p2] = 60, 60
    redirect '/play'
  end

  get '/play' do
    # @name1, @name2 = session[:name1], session[:name2]
    @name1, @name2 = $player_1.name, $player_2.name
    @hp_p1, @hp_p2 = session[:hp_p1], session[:hp_p2]
    erb :play
  end

  get '/attack' do
    # @name1, @name2 = session[:name1], session[:name2]
    @name1, @name2 = $player_1.name, $player_2.name
    erb :attack
  end
end
