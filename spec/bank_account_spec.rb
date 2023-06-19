require 'bank_account'

RSpec.describe 'Account' do
  context 'print, deposit, withdraw' do
    it 'returns an empty statement' do
      account = Account.new

      expect(account.print_statement).to eq 'date || credit || debit || balance'
    end

    it 'displays a transaction of 1000 after depositing 1000' do
      account = Account.new
      account.deposit(1000)

      expect(account.print_statement).to include  "1000"
    end
  end
end