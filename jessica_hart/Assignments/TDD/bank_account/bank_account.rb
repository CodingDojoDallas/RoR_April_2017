class BankAccount
  attr_reader :account_number, :checkings_balance, :savings_balance, :interest_rate
  @@total_accounts = 0
  @interest_rate = 0.01
  def initialize
    generate_account_number
    @@total_accounts += 1
    @savings_balance = 0
    @checkings_balance = 0
  end
  def deposit(account, amount)
    if account.downcase == "checking"
      @checkings_balance += amount
    else
      @savings_balance += amount
    end
    self
  end
  def withdrawal(account, amount)
    if account.downcase == "checking"
      if @checkings_balance - amount < 0
        raise "Insufficient Funds, you have #{@checkings_balance} in this account"
      else
        @checkings_balance -= amount
      end
    else
      if @savings_balance - amount < 0
        raise "Insufficient Funds, you have #{@savings_balance} in this account"
      else
        @savings_balance -= amount
      end
    end
    self
  end
  def total_balance
    "Checking Balance: #{@checkings_balance}\nSaving Balance: #{@savings_balance}\nTotal Balance: #{@checkings_balance + @savings_balance}"
  end
  def account_information
    "Account Number: #{@account_number}\nInterest Rate: #{@interest_rate}\n#{self.total_balance}"
  end
  def self.num_accounts
    @@bank_accounts
  end
  private
    def generate_account_number
      @account_number = Array.new(10).map { rand(1..9) }.join
    end
end

# bank = BankAccount.new.deposit("saving", 500).withdrawal("saving", 20).deposit("checking", 800)
# puts bank.account_information
