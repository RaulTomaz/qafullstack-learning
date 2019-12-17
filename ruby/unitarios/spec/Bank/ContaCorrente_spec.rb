require_relative '../../app/Bank.rb'

describe ContaCorrente do
  describe "Saque" do
    context "Quando o valor é positivo" do
      before(:all) do
        @contaCorrente = ContaCorrente.new(1000.00) #variável de instância, existe em todo o contexto com @
        @contaCorrente.withdrawBalance(200.00)
      end
      it "Então atualiza saldo" do
        expect(@contaCorrente.Balance).to eql 795.00
      end
    end

    context "Quando o valor é zero e saco 100 reais" do
      before(:all) do
        @contaCorrente = ContaCorrente.new(0.00)
        @contaCorrente.withdrawBalance(100.00)
      end
      it "Então vejo a mensagem" do
        expect(@contaCorrente.Message).to eql "Saldo insuficiente para saque :("
      end
      it "E meu saldo final deve ser zero" do
        expect(@contaCorrente.Balance).to eql 0.00
      end
    end

    context "Quando o valor é 500 e tento sacar 501" do
      before(:all) do
        @contaCorrente = ContaCorrente.new(500.00)
        @contaCorrente.withdrawBalance(501.00)
      end
      it "Então vejo a mensagem Saldo insuficiente para saque :(" do
        expect(@contaCorrente.Message).to eql "Saldo insuficiente para saque :("
      end
      it "E meu saldo final deve ser 500" do
        expect(@contaCorrente.Balance).to eql 500.00
      end
    end

    context "Quando o valor é 1000 e faço um saque de 701" do
      before(:all) do
        @contaCorrente = ContaCorrente.new(1000.00)
        @contaCorrente.withdrawBalance(701.00)
      end
      it "Entao vejo a mensagem Limite maximo por saque e de 700" do
        expect(@contaCorrente.Message).to eql "Limite máximo por saque é de R$ 700"
      end
      it "E meu saldo final deve ser 1000" do
        expect(@contaCorrente.Balance).to eql 1000.00
      end
    end
  end
end
