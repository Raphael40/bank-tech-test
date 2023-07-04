class Print_statement 

  def print_statement(transactions)
    transaction_history = transactions.instance_variable_get(:@transactions)
    if transaction_history.length.positive?
      "date || credit || debit || balance \n#{transaction_history.map { |transaction| transaction.join(' || ') }.join(" \n")}"
    else
      'date || credit || debit || balance'
    end
  end
end