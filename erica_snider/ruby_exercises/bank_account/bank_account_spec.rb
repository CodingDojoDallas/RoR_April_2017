require_relative 'bank_account'
RSpec.describe BankAccount do

  before(:each) do
    @test_account = BankAccount.new
  end

  it 'Has a getter method for retrieving the checking account balance' do
    expect(@test_account.checking).to eq(0)
    expect{@test_account.checking = 1}.to raise_error(NoMethodError)
  end

  it 'Has a getter method that retrieves the total account balance' do
    expect(@test_account.balance).to eq(@test_account.checking + @test_account.saving)
    expect{@test_account.balance = 1}.to raise_error(NoMethodError)
  end

  describe 'withdraw functionality' do
    it 'Has a function that allows the user to withdraw cash from checking' do
      @test_account.deposit("checking",20)
      expect(@test_account.withdrawal("checking",10)).to eq(10)
    end
    it 'Has a function that allows the user to withdraw cash from saving' do
      @test_account.deposit("saving",20)
      expect(@test_account.withdrawal("saving",10)).to eq(10)
    end
  end

  describe 'withdraw errors' do
    it 'Raises an error if a user tries to withdraw more money than they have in the checking account' do
      expect{@test_account.withdrawal("checking",10)}.to raise_error('Insufficient Funds, you have 0 in this account')
    end
    it 'Raises an error if a user tries to withdraw more money than they have in the saving account' do
      expect{@test_account.withdrawal("saving",10)}.to raise_error('Insufficient Funds, you have 0 in this account')
    end
  end

  it 'Raises an error when the user attempts to retrieve the total number of bank accounts' do
    # expect{@test_account.bank_accounts}.to raise_error(NoMethodError)
    expect{@test_account.number_of_accounts}.to raise_error(NoMethodError)
  end

  it 'Raises an error when the user attempts to set the interest rate' do
    expect{@test_account.interest_rate}.to raise_error(NoMethodError)
  end

end


####################################################################################
# PLATFORM SOLUTION ################################################################
####################################################################################
# require_relative 'bank_account'
#
# RSpec.describe BankAccount do
#   before(:each) do
#     @acc = BankAccount.new
#   end
#
#   it "has a getter method for retrieving the checking account balance" do
#     expect(@acc.checking).to eq(0)
#   end
#
#   it "has a getter method that retrieves the total account balance" do
#     expect(@acc.total).to eq("Checking Balance: 0\nSaving Balance: 0\nTotal Balance: 0")
#   end
#
#   context "withdrawing money" do
#     it "raises an error if user tries to withdraw more money than the have in checkings" do
#       expect{ @acc.withdrawal("checking", 100) }.to raise_error("Insufficient Funds, you have 0 in this account")
#     end
#
#     it "raises an error if user tries to withdraw more money than the have in savings" do
#       expect{ @acc.withdrawal("savings", 100) }.to raise_error("Insufficient Funds, you have 0 in this account")
#     end
#   end
#
#   it "raises an error when the user attempts to retrieve the total number of bank accounts" do
#     expect{ @acc.number_of_accounts }.to raise_error(NoMethodError)
#   end
#
#   it "raises an error when the user attempts to set the interest rate" do
#     expect{ @acc.interest_rate }.to raise_error(NoMethodError)
#   end
# end
####################################################################################
####################################################################################
####################################################################################
