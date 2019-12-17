def diga_ola(nome)
  puts "Olá, " + nome
end

diga_ola("Raul Tomaz")

# def retorna_nome
#   "Raul Tomaz" # no ruby, a última linha de código do método definido já é o retorno, não precisa de return
# end

# resultado = retorna_nome
# puts "#{diga_ola.to_s} senhor #{resultado.to_s}"

def soma(v1, v2)
  total = v1 + v2
  total
end

res = soma(10, 25)
puts res
