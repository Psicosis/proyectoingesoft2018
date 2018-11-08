class Jugador

    def initialize(nombre)
        @nombre = nombre
        @puntaje=0
    end

    def getNombre()
        return @nombre
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
    
end