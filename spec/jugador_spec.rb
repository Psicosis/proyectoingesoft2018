require "./lib/jugador"

describe Jugador do

    it "deberia poder leer el nombre del jugador como 'Edwin'"do
        j=Jugador.new("Edwin")
        expect( j.getNombre() ).to eq "Edwin"
    end

    it "deberia poder guardar el nombre del jugador como 'Juan'"do
        j=Jugador.new(" ")
        expect( j.setNombre("Juan")).to eq "Juan"
    end

    it "deberia poder ver todo mi puntaje total"do
        j=Jugador.new(" ")
        expect( j.getPuntaje()).to eq 0
    end

    it "Si obtengo mi 1er cuadrado mi puntaje deberia aumentar en 1"do
        j=Jugador.new(" ")
        expect( j.aumentarPuntaje()).to eq 1
    end

    it "Si tengo 3 cuadrados y obtengo otro cuadrado, seria igual a 4 mi puntaje"do
        j=Jugador.new(" ")
        j.aumentarPuntaje()
        j.aumentarPuntaje()
        j.aumentarPuntaje()
        expect( j.aumentarPuntaje()).to eq 4
    end

    


end

