# frozen_string_literal: true

Dado("que o produto desejado \xC3\xA9 {string}") do |produto|
  @produto_nome = produto
end

Dado("o valor do produto \xC3\xA9 de {string}") do |valor|
  @produto_valor = valor
end

Quando('eu adiciono {int} unidade\\(s)') do |quantidade|
  quantidade.times do
    @rest_page.add_to_cart(@produto_nome)
  end
end

Então('deve ser adicionado {int} unidade\\(s) deste item') do |quantidade|
  expect(@rest_page.cart.box).to have_text "(#{quantidade}x) #{@produto_nome}"
end

Então('o valor total deve ser de {string}') do |valor_total|
  expect(@rest_page.cart.total.text).to eql valor_total
end

# lista de produtos

Dado("que o produto desejado s\xC3\xA3o:") do |table|
  @product_list = table.hashes
end

Quando('eu adiciono todos os itens') do
  @product_list.each do |p|
    p['quantidade'].to_i.times do
      @rest_page.add_to_cart(p['nome'])
    end
  end
end

Então('vejo todos os itens do carrinho') do
  @product_list.each do |p|
    expect(@rest_page.cart.box).to have_text "(#{p['quantidade']}x) #{p['nome']}"
  end
end

# Remover itens

Dado('que eu tenho os seguintes itens no carrinho:') do |table|
  @product_list = table.hashes
  steps %(
      Quando eu adiciono todos os itens
  )
end

Quando('eu removo somente o {int}') do |item|
  @rest_page.cart.remove_item(item)
end

Quando('eu removo todos os itens') do
  @product_list.each_with_index do |_value, idx|
    @rest_page.cart.remove_item(idx)
  end
end

Então('vejo a seguinte mensagem no carrinho {string}') do |mensagem|
  expect(@rest_page.cart.box).to have_text mensagem
end

Quando('eu limpo o meu carrinho') do
  @rest_page.cart.clean
end