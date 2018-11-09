require 'sinatra'
require './lib/punto.'
require './lib/jugador'
require './lib/tablero'

class App < Sinatra::Base

    tablero=Tablero.new()
    #jug1 = Jugador.new()
    #jug2 = Jugador.new()
    enable:sessions

        get '/' do
            erb :bienvenida
        end

        get '/jugar' do
           

            erb :jugar
        end

        get '/game' do
            erb :game
        end

        post '/game' do
         
            nomjug1 = params[:jugador1]
            nomjug2 = params[:jugador2]
            @texto = nomjug1
            @texto2 = nomjug2
            jug1 = Jugador.new(nomjug1)
            jug2 = Jugador.new(nomjug2)
            
            tablero.guardarJugador(nomjug1,nomjug2)
            tablero.inicializarTablero
            
            @matriz = tablero.getTablero
            @jugador1 = tablero.getJugador1
            @jugador2 = tablero.getJugador2
            
            erb :game
        end

        post '/game/jugada' do
            x1 = params[:x1]
            y1 = params[:y1]
            x2 = params[:x2]
            y2 = params[:y2]
            jugador=params[:jugador]
            tablero.registrarJugada(x1.to_i ,y1.to_i ,x2.to_i ,y2.to_i ,jugador)
            @matriz = tablero.getTablero
            @jugador1 = tablero.getJugador1
            @jugador2 = tablero.getJugador2
 
            erb :game
        end



        run! if app_file == $0;

end