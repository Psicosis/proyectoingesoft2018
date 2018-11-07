Feature: Configuracion
        Como Jugador
        Quiero poder configurar mi juego
        Para jugar de la mejor maner


        Scenario: mensaje de bienvenida
            Given visito la pagina Configuracion
            Then deberia de ver el mensaje "Configuracion del Juego"

        Scenario: boton Iniciar Juego
            Given visito la pagina Configuracion
            When presiono el boton "Iniciar Juego"
            Then deberia ver la pagina con titulo "Partida en Proceso"


        Scenario: escoger filas negativa
            Given visito la pagina Configuracion
            When presiono el botom "Iniciar Juego"
            Then deberia ver el mensaje "fila incorrecta"

        Scenario: escoger columna negativa
            Given visito la pagina Configuracion
            When presiono el botom "Iniciar Juego"
            Then deberia ver el mensaje "columna incorrecta"

        

            