class Account
  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(sum)
    date = Time.now.strftime('%d/%m/%Y')
    # if sum.is_a?(Integer) || sum.is_a?(Float)
    #   sum = sum.round(2)
    # end
  
    @balance += sum
    @transactions << [date, "#{sum}.00", '', "#{@balance}0"]
  end

  def withdraw(sum)
    date = Time.now.strftime('%d/%m/%Y')
    # if sum.is_a?(Integer) || sum.is_a?(Float)
    #   sum = sum.round(2)
    # end
  
    @balance -= sum
    @transactions << [date, '', "#{sum}.00", "#{@balance}0"]
  end
end