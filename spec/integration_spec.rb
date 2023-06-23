require 'account'
require 'print_statement'

RSpec.describe 'Account & Print_statement' do
  it 'add 1000 to the account then prints it' do
    date = Time.now.strftime("%d/%m/%Y")
    account = Account.new
    account.deposit(1000)
    statement = Print_statement.new
  
    expect(statement.print_statement(account)).to eq "date || credit || debit || balance \n#{date} || 1000.00 ||  || 1000.00"
  end

  it 'add two transactions to the account then prints it' do
    date = Time.now.strftime("%d/%m/%Y")
    account = Account.new
    account.deposit(1000)
    account.deposit(1000)
    statement = Print_statement.new
  
    expect(statement.print_statement(account)).to eq "date || credit || debit || balance \n#{date} || 1000.00 ||  || 1000.00 \n#{date} || 1000.00 ||  || 2000.00"
  end

  it 'add deposit then withdraw transactions to the account then prints it' do
    date = Time.now.strftime("%d/%m/%Y")
    account = Account.new
    account.deposit(1000)
    account.withdraw(500)
    statement = Print_statement.new
  
    expect(statement.print_statement(account)).to eq "date || credit || debit || balance \n#{date} || 1000.00 ||  || 1000.00 \n#{date} ||  || 500.00 || 500.00"
  end
end