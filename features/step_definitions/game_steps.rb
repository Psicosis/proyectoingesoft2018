require './lib/jugador.rb'
$juga1 = Jugador.new('Juan')
$juga2 = Jugador.new('Pedro')


Given("visito la pagina de game") do
    visit('/game') # Write code here that turns the phrase above into concrete actions
end
  
Then("deberia de ver el mensaje en la partida {string}") do |mensaje|
    expect(page).to have_content(mensaje) # Write code here that turns the phrase above into concrete actions
end


Then("deberia ver mi nombre de jugador uno {string}")do |mensaje|
    $juga1.getNombre == mensaje
    #fill_in('nomjud1', with: mensaje)
end



Then("deberia ver mi nombre de jugador dos {string}")do |mensaje|
    $juga2.getNombre == mensaje
    #fill_in('nomjud2', with: mensaje)
end









#Given("visito la pagina de game") do
  #  visit('/game') # Write code here that turns the phrase above into concrete actions
 # end

#Then("deberia de ver el mensaje en la partida {string}") do |mensaje|
 #   expect(page).to have_content(mensaje) # Write code here that turns the phrase above into concrete actions
#end