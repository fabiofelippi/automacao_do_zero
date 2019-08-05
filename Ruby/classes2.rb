# Ruby é uma linguagem considerada puramente orietada a objetos
# Porque no Ruby tudo são objetos

# Classe possui atributos e métodos
# Características e ações

# Carro (Nome, Modelo, Cor, Quantidade de Portas, etc...)
# Ligar, Businar, Parar, etc...

class Carro
    attr_accessor :nome

    def ligar
        puts 'O carro está pronto para iniciar o trajeto.'
    end

end

civic = Carro.new
civic.nome = 'Civic'

puts civic.class
puts civic.nome

civic.ligar
