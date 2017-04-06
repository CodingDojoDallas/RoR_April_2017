require_relative 'bank_account'
RSpec.describe BankAccount do
  before(:each) do
    @account1 = BankAccount.new
  end
  it 'has a getter method for retrieving the checking account balance' do
    expect(@account1.checkings_balance).to eq(0)
  end
  it 'has a getter method that retrieves the total account balance' do
    puts @account1.total_balance
    expect(@account1.total_balance).to eq("Checking Balance: 0\nSaving Balance: 0\nTotal Balance: 0")
  end
  it 'has no setter for account_number' do
    expect{@account1.account_number = 'Test'}.to raise_error(NoMethodError)
  end
  it 'has no setter for checkings_balance' do
    expect{@account1.checkings_balance = 'Test'}.to raise_error(NoMethodError)
  end
  it 'has no setter for savings_balance' do
    expect{@account1.savings_balance = 'Test'}.to raise_error(NoMethodError)
  end
  it 'has no setter for interest_rate' do
    expect{@account1.interest_rate = 'Test'}.to raise_error(NoMethodError)
  end
  it 'user cannot get total accounts' do
    expect{ @account1.total_accounts }.to raise_error(NoMethodError)
  end
  context 'withdrawing money' do
    it 'user cannot withdraw what their balance does not contain' do
      expect{ @account1.withdrawal('checking', 100) }.to raise_error('Insufficient Funds, you have 0 in this account')
    end
    it 'user cannot withdraw what their balance does not contain' do
      expect{ @account1.withdrawal('savings', 100) }.to raise_error('Insufficient Funds, you have 0 in this account')
    end
  end
end
