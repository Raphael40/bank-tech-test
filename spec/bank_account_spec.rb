require 'bank_account'

RSpec.describe 'Account' do
  context 'basic print, deposit and date' do
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
      result = account.print_statement.scan(/1000/)

      expect(result).to eq ["1000", "1000"]
    end

    it 'also includes time for one deposit' do
      account = Account.new
      account.deposit(1000)

      expect(account.print_statement).to eq "date || credit || debit || balance \n 19/06/2023 || 1000 || || 1000"
    end
  end

  context 'multiple deposits on statement' do
    
  end
end