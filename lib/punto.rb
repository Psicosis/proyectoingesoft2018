class Punto

    def initialize
        @x=0
        @y=0
        @arriba=false
        @abajo=false
        @izq=false
        @der=false
    end

    def getX
        return @x.to_i
    end

    def getY
        return @y.to_i
    end

    def getIzq
        return @izq
    end

    def getDer
        return @der
    end

    def getAbajo
        return @abajo
    end

    def getArriba
        return @arriba
    end

    def setIzq(estado)
        @izq=estado
    end

    def setDer(estado)
        @der=estado
    end

    def setAbajo(estado)
        @abajo=estado
    end

    def setArriba(estado)
        @arriba=estado
    end

    def setXY(x,y)
        @x=x
        @y=y        
    end
end




