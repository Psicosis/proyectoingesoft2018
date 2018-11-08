require "./lib/punto"

describe Punto do
    it "Al crear un punto sus coordenadas deberias ser 0,0"do
        p=Punto.new()
        expect(p.getX()).to eq 0
        expect(p.getY()).to eq 0
    end

    it "Al crear un punto sus estados de 'izq' deberia ser false"do
        p=Punto.new()
        expect(p.getIzq()).to eq false
    end

    it "Al crear un punto sus estados de 'der' deberia ser false"do
        p=Punto.new()
        expect(p.getDer()).to eq false
    end

    it "Al crear un punto sus estados de 'abajo' deberia ser false"do
        p=Punto.new()
        expect(p.getAbajo()).to eq false
    end

    it "Al crear un punto sus estaods de 'arriba' deberia ser false"do
        p=Punto.new()
        expect(p.getArriba()).to eq false
    end

    it "deberia poder cambiar el estado de 'izq'' a 'true'"do
        p=Punto.new()
        expect(p.setIzq(true)).to eq true
    end

    it "deberia poder cambiar el estado de 'der'' a 'true'"do
        p=Punto.new()
        expect(p.setDer(true)).to eq true
    end

    it "deberia poder cambiar el estado de 'abajo'' a 'true'"do
        p=Punto.new()
        expect(p.setAbajo(true)).to eq true
    end

    it "deberia poder cambiar el estado de 'arriba'' a 'true'"do
        p=Punto.new()
        expect(p.setArriba(true)).to eq true
    end

    it "deberia poder guardar la coordenada 'X' y 'Y'"do
        p=Punto.new()
        p.setXY(3,2)
        expect(p.getX()).to eq 3
        expect(p.getY()).to eq 2
    end
    
end




