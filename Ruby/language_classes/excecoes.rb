# begin
#     # Devo tentar alguma
#     file = File.open('./ola')
#     if file
#         puts file.read
#     end
# rescue Exception => e
#     # Obter um possível erro
#     puts e
#     puts e.message
#     puts e.backtrace
# end

def soma(n1, n2)
    n1 + n2
rescue StandardError => e   # Foi usado StandardError em vez de Exception apresetnado no curso
    puts e.message
    puts 'Erro ao executar a soma.'
end

soma('10', 2)