# Ruby é uma linguagem considerada puramente orientada a objetos
#Porque no ruby tudo são objetos (tipo java)

#Uma classe é uma forma de organizar ações e objetos do mundo real
#Possui atributos e no geral, métodos
#Características e ações

#carro (Nome, marcar, modelo, cor, quantidade portas, etc)
#Métodos - ações(Ligar, buzinar, parar, etc)

class Carro
    attr_accessor :nome #attr_accessor permite criar atributo que pode ser lido e definido valor
    
    def ligar
        puts "O carro está pronto para iniciar o trajeto"
    end
end

civic = Carro.new
puts civic.class
civic.nome = 'Carro de teste'
civic.ligar
puts civic.nome
