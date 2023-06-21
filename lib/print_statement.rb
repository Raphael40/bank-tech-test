class Print_statement 
  def initialize
    @transactions = []
  end

  def add_account(transaction)
    @transactions << transaction
  end

  def print_statement()
    transaction_history = @transactions[0].instance_variable_get(:@transactions)
    if transaction_history.length.positive?
      "date || credit || debit || balance \n#{transaction_history.map { |transaction| transaction.join(' || ') }.join(" \n")}"
    else
      'date || credit || debit || balance'
    end
  end
end