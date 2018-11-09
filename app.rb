require 'sinatra'
require_relative "./lib/tablero"

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
            
            
            @matriz = tablero.getTablero
            @char="*"
            @jugador1 = tablero.getJugador1
            @jugador2 = tablero.getJugador2
            
            #jugador1.setNombre(nomjug1)
            #jugador2.setNombre(nomjug2)

            erb :game
        end



        run! if app_file == $0;

end