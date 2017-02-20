require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @pup = Puppy.new(params.fetch("name"), params.fetch("breed"), params.fetch("age"))
    # binding.pry
    erb :display_puppy
  end

end
