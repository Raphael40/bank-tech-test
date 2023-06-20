class Account
  def initialize
    @balance = 0
    @transactions = []
  end
  
  def print_statement
    puts @transactions
  if @balance > 0
    return "date || credit || debit || balance \n#{@transactions.map { |transaction| transaction.join(' || ') }.join(" \n")}"
  end
    return "date || credit || debit || balance"
  end

  def deposit(sum)
    date = Time.now.strftime("%d/%m/%Y")

    @balance += sum
    @transactions << [date, sum, '', @balance]
  end
end
