# frozen_string_literal: true

describe 'Primeiro script de teste' do
  it 'visitar a página' do
    visit 'https://training-wheels-protocol.herokuapp.com'
    expect(page.title).to eql 'Training Wheels Protocol'
  end
end
