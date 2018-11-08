require 'sinatra'
require_relative "./lib/tablero"
tablero=Tablero.new()
enable:sessions

    get '/' do
        erb :bienvenida
    end

    get '/jugar' do
        erb :jugar
    end

    get '/game' do
        @matriz = tablero.getTablero
        @char="*"
        @jugador1 = tablero.getJugador1
        @jugador2 = tablero.getJugador2
        erb :game
    end

    post '/jugada'
        x1= params[:x1]
        y1= params[:y1]
        x2= params[:x2]
        y2= params[:y2]
        
    end
