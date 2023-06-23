class Account
  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(sum)
    date = Time.now.strftime('%d/%m/%Y')
    if sum.is_a?(Integer) || sum.is_a?(Float)
      sum = sum.round(2)
    end
  
    @balance += sum
    @transactions << [date, format('%.2f', sum), '', format('%.2f', @balance)]
  end

  def withdraw(sum)
    date = Time.now.strftime('%d/%m/%Y')
    if sum.is_a?(Integer) || sum.is_a?(Float)
      sum = sum.round(2)
    end
  
    @balance -= sum
    @transactions << [date, '', format('%.2f', sum), format('%.2f', @balance)]
  end
end