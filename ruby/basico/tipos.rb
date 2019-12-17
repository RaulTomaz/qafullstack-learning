# -- Tipos de variável no ruby
# -- O tipo de uma variável em ruby é definido no momento que recebe o valor

produto = 'MacBook Air'
preco = 599.99
quantidade = 10
disponivel = true

quantidade = '9'

puts produto
puts preco
puts quantidade
puts disponivel

puts produto.class
puts preco.class
puts quantidade.class
puts "a variável produto é do tipo #{disponivel.class} e apresenta valor #{disponivel}"