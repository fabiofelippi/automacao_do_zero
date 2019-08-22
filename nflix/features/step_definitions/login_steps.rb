Quando("eu faço login com {string} e {string}") do |string, string2|
    visit '/'
    sleep 2
end
  
Então("devo ser autenticado") do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então("devo ver {string} na área logada") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end