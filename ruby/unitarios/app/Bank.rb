class Conta
    attr_accessor :Balance
    attr_accessor :Message

    def initialize(value)
        self.Balance = value
    end

    def withdrawBalance(deposit, tax, limit)
        if (self.Balance < deposit)
            self.Message ="Saldo insuficiente para saque :("
        elsif(deposit > limit)
            self.Message =  'Limite máximo por saque é de R$ '+ limit.to_s
        else 
            self.Balance -= deposit + tax
        end
    end
end

class ContaCorrente < Conta
  
    def withdrawBalance(deposit, tax = 5, value = 700)
      super
    end

  end

  class ContaPoupanca < Conta
  
    def withdrawBalance(deposit, tax = 2, value = 500)
      super
    end

  end