require 'account'
require 'print_statement'

RSpec.describe 'Account & Print_statement' do
  it 'add 100 to the account then prints it' do
    date = Time.now.strftime("%d/%m/%Y")
    account = Account.new
    statement = Print_statement.new
    account.deposit(1000)
    statement.add_account(account)
  
    expect(statement.print_statement).to eq "date || credit || debit || balance \n#{date} || 1000 ||  || 1000"
  end
end