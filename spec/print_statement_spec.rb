require 'print_statement'

RSpec.describe 'Print_statement' do
  it 'print works when mocked' do
    date = Time.now.strftime('%d/%m/%Y')
    transaction = [["#{date}", '1000.00', '', '1000.00']]
    account = double('account')
    allow(account).to receive(:instance_variable_get).with(:@transactions).and_return(transaction)

    statement = Print_statement.new
    statement.add_account(account)
  
    expect(statement.print_statement).to eq "date || credit || debit || balance \n#{date} || 1000.00 ||  || 1000.00"
  end
end