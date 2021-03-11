Given("I open root page") do
    visit "/login"
    expect(page).to have_content('New cliente')
end
When("I create an cliente with cpf {string} and nome {string} and telefone {string}") do |cpf, nome, telefone|
    fill_in 'cliente[cpf]', :with => cpf
    fill_in 'cliente[nome]', :with => nome
    fill_in 'cliente[telefone]', :with => telefone
end
When("I click create cliente")  do 
    clik_button 'submit'
end
Then("I see a message {string}") do |message|
    expect(page).to have_content(message)
end 