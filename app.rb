require 'sinatra'
class App < Sinatra::Base
    get '/' do
        erb :bienvenida
    end

    get '/jugar' do
        erb :jugar
    end

    get '/game' do
        erb :game
    end
    
    run! if app_file == $0;
end