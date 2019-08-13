# frozen_string_literal: true

describe 'alertas de JavaScript', :alerts do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
  end

  it 'alerta' do
    click_button 'Alerta'
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Isto é uma mensagem de alerta'
    sleep 3
  end

  it 'sim confirma' do
    click_button 'Confirma'
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'
    sleep 1
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'Mensagem confirmada'
    sleep 3
  end

  it 'não confirma' do
    click_button 'Confirma'
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'
    sleep 1
    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content 'Mensagem não confirmada'
    sleep 3
  end

  it 'prompt' do
    accept_prompt(with: 'Fernando') do
      click_button 'Prompt'
      sleep 2
    end
    expect(page).to have_content 'Olá, Fernando'
    sleep 3
  end

  it 'cancela prompt' do
    dismiss_prompt(with: 'Fernando') do
      click_button 'Prompt'
      sleep 2
    end
    expect(page).to have_content 'Olá, null'
    sleep 3
  end
end
