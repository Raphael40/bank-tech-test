class Account
  def initialize
    @balance = 0
  end
  
  def print_balance
    puts @balance
    return @balance
  end

  def deposit(income)
    puts income
    @balance += income
  end
end
