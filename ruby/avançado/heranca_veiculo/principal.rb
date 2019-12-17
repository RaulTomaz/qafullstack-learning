require_relative "Carro.rb"
require_relative "Moto.rb"

c = Carro.new("Civic", "Honda", "SI")
puts c.ligar
puts c.buzinar
puts c.dirigir

ce = Moto.new("Lancer", "Mitsubishi", "EVO")
puts ce.ligar
puts ce.buzinar
puts ce.pilotar
