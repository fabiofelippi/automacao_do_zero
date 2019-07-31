# Feature: Caixa

# Cenario: Saque com sucesso

# Dado que eu tnho uma conta corrente com 100 reais
# Quando saco 10 reais
# Então meu saldo será de 90 reais

class Caixa
    attr_accessor :saldo

    def initialize(saldo)
        @saldo = saldo
    end

    def saque(valor)
        @saldo = @saldo - valor 
        puts 'Seu saldo é de ' + @saldo.to_s
    end
    
end

saque = Caixa.new(100)
saque.saque(10)

