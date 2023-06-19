require 'bank_account'

RSpec.describe 'Account' do
  context 'print, deposit, withdraw' do
    it 'returns a balance of 0 when print_balance is called' do
      account = Account.new

      expect(account.print_balance).to eq 0
    end

  end
end