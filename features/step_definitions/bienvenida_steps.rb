  Given("visito la pagina principal") do
    visit('/')
  end
  
  Then("deberia ver el mensaje {string}") do |mensaje|
    expect(page).to have_content(mensaje)
  end

  When("presiono el boton {string}") do |string|
    click_button(string)
  end
  
  Then("deberia ver la pagina con titulo {string}") do |mensaje|
    expect(page).to have_content(mensaje)
  end

  
  