require 'bank_account'

RSpec.describe 'Account' do
  context 'print, deposit, withdraw' do
    it 'returns a balance of 0 when print_balance is called' do
      account = Account.new

      expect(account.print_balance).to eq 0
    end

    it 'returns a balance of 1000 when print_balance is called after deposit 1000' do
      account = Account.new
      account.deposit(1000)

      expect(account.print_balance).to eq 1000
    end
  end
end