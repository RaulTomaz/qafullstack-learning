class Veiculo
  attr_accessor :nome
  attr_accessor :marca
  attr_accessor :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "O veículo #{self.nome} está pronto para iniciar o trajeto"
  end

  def buzinar
    puts "Beep! Beep!"
  end
end

class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciando o trajeto"
  end
end

class Moto < Veiculo
  def pilotar
    puts "#{nome} iniciando o trajeto"
  end
end

c = Carro.new("Civic", "Honda", "SI")
puts c.ligar
puts c.buzinar
puts c.dirigir

ce = Moto.new("Lancer", "Mitsubishi", "EVO")
puts ce.ligar
puts ce.buzinar
puts ce.pilotar
