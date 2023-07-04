class Account
  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(sum)
    date = Time.now.strftime('%d/%m/%Y')
  
    @balance += sum
    @transactions << [date, "#{sum}.00", '', "#{@balance}0"]
  end

  def withdraw(sum)
    date = Time.now.strftime('%d/%m/%Y')
  
    @balance -= sum
    @transactions << [date, '', "#{sum}.00", "#{@balance}0"]
  end
end