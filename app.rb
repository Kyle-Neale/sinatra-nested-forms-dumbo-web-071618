require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do

      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do
      pirate_hash = params[:pirate]
      @new_pirate = Pirate.new(pirate_hash)
      ship_hash = pirate_hash[:ships]
      ship_hash.each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
