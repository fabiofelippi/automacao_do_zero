# frozen_string_literal: true

describe 'Login com Cadastro', :login3 do
  before(:each) do
    visit '/access'
  end

  it 'login com sucesso' do
    within('#login') do
      find('input[name=username]').set 'stark'
      find('input[name=password]').set 'jarvis!'
    end

    click_button 'Entrar'
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
  end

  it ' cadastro com sucesso' do
    within('#signup') do
      find('input[name=username]').set 'fabio'
      find('input[name=password]').set 'felippi'
    end
    click_link 'Criar Conta'
    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
  end
end
