# frozen_string_literal: true

Dado('que acesso a lista de restaurantes') do
  @rest_list_page.load
end

Quando('eu escolho o restaurante {string}') do |restaurante|
  @rest_list_page.go(restaurante)
end

Então("vejo os seguintes itens disponiveis disponiveis no card\xC3\xA1pio:") do |table|
  items = @rest_page.menu

  product_table = table.hashes
  product_table.each_with_index do |value, index|
    expect(items[index]).to have_text value['produto'].upcase
    expect(items[index]).to have_text value['descricao']
    expect(items[index]).to have_text value['preco']
  end
end

Então('eu vejo as seguintes informacoes adicionais') do |table|
  infos = table.rows_hash
  defail = @rest_page.details
  expect(defail).to have_text infos['categoria']
  expect(defail).to have_text infos['descricao']
  expect(defail).to have_text infos['horarios']
end
