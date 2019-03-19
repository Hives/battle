require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name1], session[:name2] = params[:name1], params[:name2]
    p session
    redirect '/play'
  end

  get '/play' do
    @name1, @name2 = session[:name1], session[:name2]
    erb :play
  end
end
