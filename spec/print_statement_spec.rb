require 'print_statement'

RSpec.describe 'Account & Print_statement' do
  it 'add 100 to the account then prints it' do
    date = Time.now.strftime('%d/%m/%Y')
    transaction = [['21/06/2023', 1000, '', 1000]]
    account = double('account')
    allow(account).to receive(:instance_variable_get).with(:@transactions).and_return(transaction)

    statement = Print_statement.new
    statement.add_account(account)
  
    expect(statement.print_statement).to eq "date || credit || debit || balance \n#{date} || 1000 ||  || 1000"
  end
end