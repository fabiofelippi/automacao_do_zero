# frozen_string_literal: true

describe 'Caixa de opções', :dropdown do
  it 'item específico simples' do
    visit '/dropdown'
    select('Loki', from: 'dropdown')
    sleep 3 # temporario
  end

  it 'item específico com o FIND' do
    visit '/dropdown'
    drop = find('.avenger-list')
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3 # temporario
  end

  it 'qualquer item' do
    visit '/dropdown'
    drop = find('.avenger-list')
    drop.all('option').sample.select_option # via sorteio de opcoes
    sleep 3 # temporario
  end
end
