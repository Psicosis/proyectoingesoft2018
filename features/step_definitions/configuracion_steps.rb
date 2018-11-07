Given("visito la pagina Configuracion") do
    visit('/jugar') # Write code here that turns the phrase above into concrete actions
end

Then("deberia de ver el mensaje {string}") do |mensaje|
    expect(page).to have_content(mensaje) # Write code here that turns the phrase above into concrete actions
end

When("presiono el boton iniciar juego {string}") do |string|
    click_button(string)
end
  
Then("deberia ver la pagina con titulo  {string}") do |mensaje|
    expect(page).to have_content(mensaje)
end
