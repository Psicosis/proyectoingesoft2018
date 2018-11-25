class Jugador

    def initialize(nombre)
        @nombre = nombre
        @puntaje=0
        @controlTurno=2
        
    end

    def getNombre
        @nombre
    end

    def setNombre(nombre)
        @nombre = nombre
    end

    def aumentarPuntaje()
        @puntaje += 1
    end

    def getPuntaje()
        return @puntaje
    end

    def resetcontrolTurno()
		@controlTurno = 2
    end

    def getControlTurno
        return @controlTurno
    end

    def restarTurno()
        @controlTurno -= 1
    end

    def getTurno()
        @controlTurno
    end
    
    
end