class Animal
    attr_accessor :nome, :idade, :raca

    def initialize(nome, idade, raca)  #Construtor em Ruby
        puts 'Tudo começa aqui'
        @nome = nome
        @idade = idade
        @raca = raca
    end

    def montra_nome
        puts @nome
    end

    def mostra_idade
        puts @idade
    end
end

class Gato < Animal
    def mia
        puts @nome + ' diz: miau...'
    end

end


class Cachorro < Animal
    def late
        puts @nome + ' diz: au au...'
    end

end

class Pato < Animal
    def grasna
        puts @nome + ' diz: quack quack...'
    end

end

tom = Gato.new('Tom', 5, 'Siames')
puts tom.nome
tom.mia
# tom.nome = 'Tom'
# tom.idade = 5

# tom.montra_nome
# puts tom.nome
# tom.mostra_idade
# puts tom.idade

garfield = Gato.new('Garfield', 3, 'Preguiça')
puts garfield.nome
garfield.mia

spike = Cachorro.new('Spike', 10, 'Viralata')
puts spike.nome
spike.late

patolino = Pato.new('Patolino', 4, 'Ave')
puts patolino.nome
patolino.grasna

