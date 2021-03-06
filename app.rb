require "sinatra/base"
require "player"

# do not ever do this!!!  Global variables are BAD

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    #'Testing infrastructure working!'
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get "/play" do
    @player1 = $player1
    @player2 = $player2
    # @player1_name = session[:player1]
    # @player2_name = session[:player2]
    erb(:play)
  end

  get "/attack" do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb(:attack)
  end

  run! if app_file == $0
end
