require_relative "Veiculo.rb"

class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciando o trajeto"
  end
end
