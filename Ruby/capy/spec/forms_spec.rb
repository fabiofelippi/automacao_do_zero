# frozen_string_literal: true

describe 'Forms', :login_form do
  it 'login com sucesso' do
    visit '/login'
    fill_in 'userId', with: 'stark'
    fill_in 'password', with: 'jarvis!'
    click_button 'Login'
    expect(find('#flash').visible?).to be true
    expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
  end

  it 'senha incorreta' do
    visit '/login'
    fill_in 'userId', with: 'stark'
    fill_in 'password', with: 'jarvis'
    click_button 'Login'
    expect(find('#flash').visible?).to be true
    expect(find('#flash').text).to include 'Senha é invalida!'
  end

  it 'usuário não cadastrado' do
    visit '/login'
    fill_in 'userId', with: 'sdfsfsdfsdfs'
    fill_in 'password', with: 'sdfsdfsdfsdfs'
    click_button 'Login'
    expect(find('#flash').visible?).to be true
    expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'
  end

  after(:each) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
    page.save_screenshot('log/' + nome + '.png')
  end
end
