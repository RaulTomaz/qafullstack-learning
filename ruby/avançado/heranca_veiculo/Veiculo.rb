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