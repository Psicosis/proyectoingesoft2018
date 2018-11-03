Feature: Bienvenida
    Como estudiante 
    Quiero ver un mensaje de bienvenida en la calculadora 
    Para sentirme a gusto desde el inicio

    Scenario: mensaje de bienvenida
        Given visito la pagina principal
        Then deberia ver el mensaje "Cuadrados y Puntos"
    
    Scenario: boton Empezar
        Given visito la pagina principal
        When presiono el boton "Empezar"
        Then deberia ver la pagina con titulo "hola"