# frozen_string_literal: true

Quando("eu faço login com {string} e {string}") do |email, password|
  @login_page.go
  @login_page.with(email, password)
  sleep 2
end

Então('devo ser autenticado') do
  expect(get_token.length).to be 147
end

Então("devo ver {string} na área logada") do |expected_name|
  expect(@sidebar.logged_user).to eql expected_name
end

Então("não devo ser autenticado") do
  expect(get_token).to be nil
end

Então("devo ver a mensagem de alerta {string}") do |expected_message|
  expect(@login_page.alert).to eql expected_message
end