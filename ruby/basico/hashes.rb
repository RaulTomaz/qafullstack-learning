carro = Hash[Nome: ["Civic", "teste"], Marca: "Honda", Cor: "Vermelho"]

puts carro[:Nome]

carro[:modelo] = "SI"
carro[:Nome].push "teste2"
# push se usa para armazenar novo valor como array da chave

puts carro
