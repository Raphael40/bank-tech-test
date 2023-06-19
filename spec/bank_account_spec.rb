require 'bank_account'

RSpec.describe 'Account' do
  context 'print, deposit, withdraw' do
    it 'returns an empty statement' do
      account = Account.new

      expect(account.print_statement).to eq 'date || credit || debit || balance'
    end

    it 'includes 1000 in statement after depositing 1000' do
      account = Account.new
      account.deposit(1000)

      expect(account.print_statement).to include  "1000"
    end

    it 'includes 1000 in twice after depositing 1000' do
      account = Account.new
      account.deposit(1000)
      result = account.print_statement.gsub(/[^1000]/, '')

      expect(result).to eq "10001000"
    end
  end
end