Feature: Game
    Como jugador
    Quiero ver un el estado de mi partida
    Para saber donde me encuentro

    Scenario: mensaje de game
            Given visito la pagina de game
            Then deberia de ver el mensaje en la partida "Partida en Proceso"

    Scenario: ver nombre del jugador 1
            Given visito la pagina de game
            Then deberia ver mi nombre de jugador uno "Juan"

    Scenario: ver nombre del jugador 2
            Given visito la pagina de game
            Then deberia ver mi nombre de jugador dos "Pedro"