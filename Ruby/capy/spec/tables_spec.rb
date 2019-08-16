# frozen_string_literal: true

describe 'Tables', :tables do
  before(:each) do
    visit '/tables'
  end

  it 'deve exibir o salário do Stark' do
    atores = all('table tbody tr')
    stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }
    expect(stark.text).to include '10.000.000'
  end

  it 'deve exibirt o salário do Vin Diesel' do
    diesel = find('table tbody tr', text: '@vindiesel')
    expect(diesel).to have_content '10.000.000'
  end

  it 'deve exibir o filme Velozes' do
    diesel = find('table tbody tr', text: '@vindiesel')
    movie = diesel.all('td')[2].text
    expect(movie).to eql 'Fast & Furious'
  end

  it 'deve exibir o Insta do Chris Evans' do
    evans = find('table tbody tr', text: 'Chris Evans')
    insta = evans.all('td')[4].text
    expect(insta).to eql '@teamcevans'
  end

  it 'deve selecionar Chris Pratt para remoção' do
    pratt = find('table tbody tr', text: 'Chris Pratt')
    pratt.find('a', text: 'delete').click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
  end

  it 'deve selecionar Chris Pratt para edição' do
    pratt = find('table tbody tr', text: 'Chris Pratt')
    pratt.find('a', text: 'edit').click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
  end

  after(:each) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
    page.save_screenshot('log/' + nome + '.png') if e.exception # short if para casos de exceção apenas
  end
end
