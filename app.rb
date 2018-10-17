require 'sinatra/base'
require 'pry'
require_relative 'player'

class Battle < Sinatra::Base

  attr_reader :player1, :player2
  enable :sessions

  get '/' do
    erb(:name_form)
  end

  post '/names_form' do
    $player.name = params[:playerA]
    $player.name = params[:playerB]
    redirect '/play'
  end

  get '/play' do
    @player1 = Player.new(session[:player1_name]) unless !!@player1
    @player2 = Player.new(session[:player2_name]) unless !!@player2
    erb(:play)
  end

  post '/next_round' do
    @player1.attack(@player2)
    redirect '/play'
  end
end
