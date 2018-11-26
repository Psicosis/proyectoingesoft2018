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
            Then deberia ver la pagina con titulo "Juego en Progreso"


        

        

            