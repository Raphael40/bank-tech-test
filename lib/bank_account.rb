class Account
  def initialize
    @balance = 0
  end
  
  def print_balance
    puts @balance
    return @balance
  end

  def deposit(sum)
    puts sum
    @balance += sum
  end

  def withdraw(sum)
    puts sum
    @balance -= sum
  end
end
