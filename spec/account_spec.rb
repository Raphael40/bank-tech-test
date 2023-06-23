require 'account'

RSpec.describe 'Account' do
  it 'deposits a sum' do
    account = Account.new
    account.deposit(10)
    transaction = account.instance_variable_get(:@transactions)

    expect(transaction[0][1]).to eq '10.00'
    expect(transaction[0][3]).to eq '10.00'
  end
end