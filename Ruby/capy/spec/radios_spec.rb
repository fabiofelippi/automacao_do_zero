# frozen_string_literal: true

describe 'Botão radio', :radio do
  before(:each) do
    visit '/radios'
  end

  it 'seleção por ID' do
    choose('cap')
  end

  it 'seleção por FIND e CSS SELECTOR' do
    find('input[value=guardians]').click
  end

  after(:each) do
    sleep 3
  end
end
