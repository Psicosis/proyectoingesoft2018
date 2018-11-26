require "./lib/punto"
require "./lib/jugador"
require "./lib/linea"

class Tablero

    def initialize
        @fila=5
        @columna=5
        @jugador1 = Jugador.new(" ")
        @jugador2 = Jugador.new(" ")
        @matriz=Array.new(@fila) {Array.new(@columna) {Punto.new()}}
        @matrizlinea=Array.new(@fila) {Array.new(@columna) {Linea.new()}}
        @turnoJugador = "j1"
        
        
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
        else
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
    end
    
    

    def returnRow(row)
		abc = [*'A'..'D']
		return abc.index(row)
    end
    
    def devolverTurnoJug1
        return @jugador1.getTurno()
    end

    def devolverTurnoJug2
        return @jugador2.getTurno()
    end

    def resetTurnoJ1
        @jugador1.resetcontrolTurno()
    end

    def resetTurnoJ2
        @jugador2.resetcontrolTurno()
    end

    def getTablero
        @matriz
    end

    def getMatrizLinea
        @matrizlinea
    end

    def getJugador1
        @jugador1
    end

    def getJugador2
        @jugador2
    end

    def colocarPunto(row, column)
		if(@turnoJugador == "j1")
            @jugador1.restarTurno()
            #@matriz[1][1].setc("B")
            @matriz[row-1][column-1].setc("1")
            
            
		else
            @jugador2.restarTurno()		
            @matriz[row-1][column-1].setc("2")	
		end
	end



    def changeTurn()
		if(@turnoJugador == "j1")
			@turnoJugador ="j2"
		else
			@turnoJugador = "j1"
		end
    end
    


    def returnTurn()
		return @turnoJugador
    end
    
    #def placeElementInTheBoard(row,column,element)
     #   @matriz[row][colum].setc(element)
    #end

    def getMatriz()
		return @matriz
    end

    def getMatrizLinea()
		return @matrizlinea
    end
    
    
    
    def marcarPunto(row,colum)
		
			row = returnRow(row)
            colum=colum-1            
            #placeElementInTheBoard(row,colum,'B')	
            #@matriz[1][1].setc('B')
            
			@controlTurno=@controlTurno-1
		
    end
   

end