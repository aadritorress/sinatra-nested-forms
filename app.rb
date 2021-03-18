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

    get 'pirates/new' do 

      erb :'pirates/new'
    end 

    post "/pirates" do

      @pirate = Pirate.create(name: params['name, weight, height'])
      # redirect "/pirates/#{@pirate.id}"

      # @pirate = Pirate.create(params['name, weight, height'])
      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end
      # @ships = Ship.all

      erb :'pirates/show'
    end

  end 
end
