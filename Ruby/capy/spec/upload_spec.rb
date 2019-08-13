# frozen_string_literal: true

describe 'Upload de arquivo', :upload do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/upload'
    @arquivo = Dir.pwd + '/spec/fixtures/file.txt'
    @imagem = Dir.pwd + '/spec/fixtures/avengers.png'
  end

  it 'upload com arquivo texto' do
    attach_file('file-upload', @arquivo)
    # click_button('Upload') ==> Esta linha ou a de baixo funcionam da mesma maneira
    click_button 'Upload'
    div_arquivo = find('#uploaded-file')
    expect(div_arquivo.text). to eql 'file.txt'
  end

  it 'upload de imagem' do
    attach_file('file-upload', @imagem)
    click_button 'Upload'
    img = find('#new-image')
    expect(img[:src]).to include '/uploads/avengers.png'
  end

  after(:each) do
    sleep 3
  end
end
