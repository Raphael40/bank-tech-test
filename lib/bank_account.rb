class Account
  def initialize
    @balance = 0
    @transactions = []
  end
  
  def print_statement
    puts @balance
  if @balance > 0
    return "date || credit || debit || balance' \n || || || 1000"
  end
    return "date || credit || debit || balance"
  end

  def deposit(sum)
    @balance += sum
  end
end
