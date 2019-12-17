class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

#TDD (Desenvolvimento guiado para testes, criar o teste e suite antes da classe)
describe AvengersHeadQuarter do
  it "deve adicionar um vingador" do
    hq = AvengersHeadQuarter.new
    hq.put("Spiderman")
    expect(hq.list).to include "Spiderman"
  end

  it "deve adicionar uma lista de vingadores" do
        hq = AvengersHeadQuarter.new
        hq.put('THOR')
        hq.put('HULK')
        hq.put('Spiderman')

        res = hq.list.size > 0 #condicional do terceiro expect

        expect(hq.list).to include 'THOR' #to include para verificar se item existe em uma lista
        expect(hq.list.size).to be > 0 #checa se tem mais de um item na lista, .size só funciona pra lista
        expect(res).to be true #compara booleanos se uma condicional é verdadeira
    end

    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('THOR')
        hq.put('HULK')
        hq.put('Spiderman')

        expect(hq.list).to start_with('THOR')
    end

    it 'Iron man deve ser o último da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('THOR')
        hq.put('HULK')
        hq.put('Spiderman')
        hq.put('Iron Man')

        expect(hq.list).to end_with('Iron Man')
    end

    it 'Deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/) #expressão regular - contém algo com match
        expect(avenger).not_to match(/Papito/) #expressão regular - não contém algo com not_to
    end

end
