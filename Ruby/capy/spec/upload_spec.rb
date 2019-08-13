# frozen_string_literal: true

describe 'Upload de arquivo', :upload do
  before(:each) do
    @arquivo = Dir.pwd + '/spec/fixtures/file.txt'
    @imagem = Dir.pwd + '/spec/fixtures/avengers.png'
    visit 'https://training-wheels-protocol.herokuapp.com/upload'
  end

  it 'upload com arquivo texto' do
    attach_file('file-upload', @arquivo)
  end

  after(:each) do
    sleep 3
  end
end
