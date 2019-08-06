class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 30.0
    self.nome = nome
  end

  def deposita(valor)
    self.saldo += valor
    puts '1 - Depositando a quantia de ' + valor.to_s + ' reais.'
    puts "2 - Depositando a quantia de #{valor} reais na conta de #{self.nome}."
  end
end

c = Conta.new('Fernando')
c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo