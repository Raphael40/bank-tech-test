class Account
  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(sum)
    date = Time.now.strftime('%d/%m/%Y')

    @balance += sum
    @transactions << [date, sum, '', @balance]
  end

  def withdraw(sum)
    date = Time.now.strftime('%d/%m/%Y')

    @balance -= sum
    @transactions << [date, '', sum, @balance]
  end
end