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

    it 'also includes todays date for one deposit' do
      account = Account.new
      account.deposit(1000)
      date = Time.now.strftime("%d/%m/%Y")

      expect(account.print_statement).to eq "date || credit || debit || balance \n#{date} || 1000 ||  || 1000"
    end
  end
 
  context 'multiple transactions on statement' do
    it 'has records for two deposits' do
      account = Account.new
      account.deposit(1000)
      account.deposit(1000)
      date = Time.now.strftime("%d/%m/%Y")
  
      expect(account.print_statement).to eq "date || credit || debit || balance \n#{date} || 1000 ||  || 1000 \n#{date} || 1000 ||  || 2000"
    end

    it 'has records for three deposits' do
      account = Account.new
      account.deposit(1000)
      account.deposit(1000)
      account.deposit(500)
      date = Time.now.strftime("%d/%m/%Y")
  
      expect(account.print_statement).to eq "date || credit || debit || balance \n#{date} || 1000 ||  || 1000 \n#{date} || 1000 ||  || 2000 \n#{date} || 500 ||  || 2500"
    end
  end
end