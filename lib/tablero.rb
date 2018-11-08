require "./lib/punto"
require "./lib/jugador"

class Tablero

    def initialize
        @fila=4
        @columna=4
        @jugador1 = Jugador.new("Edwin")
        @jugador2 = Jugador.new("Oliver")
        @matriz=Array.new(@fila) {Array.new(@columna) {Punto.new()}}
    end

    def inicializarTablero
        for i in 0..3 do
            @matriz[0][i].setArriba(true)
            @matriz[3][i].setAbajo(true)
            @matriz[i][0].setIzq(true)
            @matriz[i][3].setDer(true)
        end
    end

    def guardarJugador(jugador1,jugador2)
        @jugador1.setNombre(jugador1)
        @jugador2.setNombre(jugador2)
    end

    def tipoJugada(x1,y1,x2,y2)
        if x1 == x2
            return "horizontal"
        else
            if y1==y2
                return "vertical"
            else
                return "error"
            end
        end
    end

    #p1(2.2) p2(2.1)//  p1(2.2) p2(3.2)
    def devolverMayor(x1,y1,x2,y2)
        if x1==x2
            if y1>y2
                return "p1"
            else
                return "p2"
            end
        else
            if y1==y2
                if x1>x2
                    return "p1"
                else
                    return "p2"
                end
            end
        end
    end

    def registrarJugada(x1,y1,x2,y2,jugador)
        if tipoJugada(x1,y1,x2,y2)=="horizontal"
            if devolverMayor(x1,y1,x2,y2)=="p2"
                @matriz[x1][y1].setDer(true)
                @matriz[x2][y2].setIzq(true)
            else
                @matriz[x1][y1].setIzq(true)
                @matriz[x2][y2].setDer(true)
            end
        end

        if tipoJugada(x1,y1,x2,y2)=="vertical"
            if devolverMayor(x1,y1,x2,y2)=="p2"
                @matriz[x1][y1].setAbajo(true)
                @matriz[x2][y2].setArriba(true)
            else
                @matriz[x1][y1].setArriba(true)
                @matriz[x2][y2].setAbajo(true)
            end
        end
    end

    def getTablero
        @matriz
    end

    def getJugador1
        @jugador1
    end

    def getJugador2
        @jugador2
    end

end