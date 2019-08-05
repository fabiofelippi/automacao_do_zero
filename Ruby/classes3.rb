class Conta
  attr_accessor :saldo

  def deposita(valor)
    self.saldo += valor
    puts '1 - Depositando a quantia de ' + valor.to_s + ' reais.'
    puts "2 - Depositando a quantia de #{valor} reais."
  end
end

c = Conta.new
c.saldo = 3.0
c.deposita(100.00)
puts c.saldo
