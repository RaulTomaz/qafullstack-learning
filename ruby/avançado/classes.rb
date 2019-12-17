class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0
    self.nome = nome
  end

  def deposita(valor)
    self.saldo += valor #recurso do ruby pra invocar outro objeto dentro de propria classe (metodo, atributo)
    puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}"
  end
end

c = Conta.new("Raulzito")

c.deposita(100.00)
puts c.saldo
c.deposita(10.00)
puts c.saldo
puts c.nome
