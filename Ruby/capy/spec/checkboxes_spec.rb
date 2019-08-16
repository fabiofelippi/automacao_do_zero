# frozen_string_literal: true

describe 'Caixas de seleção', :checkbox do
  before(:each) do
    visit '/checkboxes'
  end

  it 'marcando uma opção' do
    check('thor')
  end

  it 'desmarcando uma opção' do
    uncheck('antman')
  end

  it 'marcando com FIND SET THROUGH' do
    find('input[value=cap]').set(true)
  end

  it 'desmarcando com FIND SET THROUGH' do
    find('input[value=guardians]').set(false)
  end

  after(:each) do
    sleep 3
  end
end
