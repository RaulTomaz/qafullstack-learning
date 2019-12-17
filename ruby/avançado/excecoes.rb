# begin
#   #Tentar alguma coisa
#   file = File.open("./ola.txt", "r:UTF-8")
#   if file
#     puts file.read
#   end
# rescue Exception => e
#   #Obter um possível erro
#   #Try catch do ruby
#   puts e.message #mensagem de erro
#   puts e.backtrace #abre o arquivo e mostra onde está o erro
# end

def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts "Erro ao realizar a soma: " + e.message
    puts e.backtrace
end

soma('10', 5)