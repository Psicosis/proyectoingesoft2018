require './lib/jugador.rb'
$juga1 = Jugador.new('Juan')
$juga2 = Jugador.new('Pedro')


Given("visito la pagina de game") do
    visit('/game') # Write code here that turns the phrase above into concrete actions
end
  
Then("deberia de ver el mensaje en la partida {string}") do |mensaje|
    expect(page).to have_content(mensaje) # Write code here that turns the phrase above into concrete actions
end











#Given("visito la pagina de game") do
  #  visit('/game') # Write code here that turns the phrase above into concrete actions
 # end

#Then("deberia de ver el mensaje en la partida {string}") do |mensaje|
 #   expect(page).to have_content(mensaje) # Write code here that turns the phrase above into concrete actions
#end