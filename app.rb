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
