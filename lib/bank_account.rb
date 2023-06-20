class Account
  def initialize
    @balance = 0
    @transactions = []
  end
  
  def print_statement
    if @transactions.length > 0
      return "date || credit || debit || balance \n#{@transactions.map { |transaction| transaction.join(' || ') }.join(" \n")}"
    else
      return "date || credit || debit || balance"
    end
  end

  def deposit(sum)
    date = Time.now.strftime("%d/%m/%Y")

    @balance += sum
    @transactions << [date, sum, '', @balance]
  end

  def withdraw(sum)
    date = Time.now.strftime("%d/%m/%Y")

    @balance -= sum
    @transactions << [date, '', sum, @balance]
  end
end
