class Account
  def initialize
    @balance = 0
  end
  
  def print_statement
    puts @balance
    return 'date || credit || debit || balance'
  end

end
