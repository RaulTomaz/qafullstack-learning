require_relative "Veiculo.rb"

class Moto < Veiculo
  def pilotar
    puts "#{nome} iniciando o trajeto"
  end
end
