Feature: Bienvenida
    Como jugador
    Quiero ver un menseja de bienvenida
    Para sentirme a gusto desde el inicio

    Scenario: mensaje de bienvenida
        Given visito la pagina principal
        Then deberia ver el mensaje "CUADRADOS Y PUNTOS"

    Scenario: boton Empezar
        Given visito la pagina principal
        When presiono el boton "Empezar"
        Then deberia ver la pagina con titulo "CUADRADOS Y PUNTOS"

    Scenario: boton iniciar partida
        Given visito la pagina de configuracion
        When presiono el boton "Iniciar Juego"
        Then deberia ver la pagina con titulo  "Partida en Proceso"