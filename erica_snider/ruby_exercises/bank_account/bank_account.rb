# class BankAccount
#   @@number_of_accounts = 0
#   @@interest_rate = 0.01
#   def initialize
#     @@number_of_accounts += 1
#     account_number
#     @checking = 1000
#     @saving = 1000
#     @total = @checking + @saving
#   end
#
#   def display_account_number
#     @account_number
#     self
#   end
#
#   def checking
#     @checking
#     self
#   end
#
#   def saving
#     @saving
#     self
#   end
#
#   def checking_deposit(amt)
#     @checking += amt
#     self
#   end
#
#   def saving_deposit(amt)
#     @saving += amt
#     self
#   end
#
#   def checking_withdrawal(amt)
#     @checking -= amt
#     self
#   end
#
#   def saving_withdrawal(amt)
#     @saving -= amt
#     self
#   end
#
#   def number_of_accounts
#     @@number_of_accounts
#     self
#   end
#
#   def account_information
#     puts "Your account number is #{@account_number}"
#     puts "Your account total is #{@total}"
#     puts "Your checking total is #{@checking}"
#     puts "Your saving total is #{@saving}"
#     puts "Your interest rate is #{@@interest_rate}"
#
#   end
#
#   private
#     def account_number
#       @account_number = rand(100000..999999)
#     end
#
# end

# account = BankAccount.new
# account.checking_deposit(200).account_information
# puts account.@total


####################################################################################
# PLATFORM SOLUTION ################################################################
####################################################################################
class BankAccount
  attr_reader :account_number, :checking, :saving, :balance

  @@bank_accounts = 0

  def initialize
    @account_number = create_account
    @checking = 0
    @saving = 0
    @balance = @checking + @saving
    @@bank_accounts += 1
    # not accessible since we do not have a reader for it
    @interest_rate = 0.01
  end

  def deposit(account, amount)
    if account.downcase == "checking"
      @checking += amount
    else
      @saving += amount
    end
  end

  def withdrawal(account, amount)
    if account.downcase == "checking"
      if @checking - amount < 0
        raise "Insufficient Funds, you have #{@checking} in this account"
      else
        @checking -= amount
      end
    else
      if @saving - amount < 0
        raise "Insufficient Funds, you have #{@saving} in this account"
      else
        @saving -= amount
      end
    end
  end

  def total
    "Checking Balance: #{@checking}\nSaving Balance: #{@saving}\nTotal Balance: #{@checking + @saving}"
  end

  def account_information
    "Account Number: #{@account_number}\nInterest Rate: #{@interest_rate}\n#{self.total}"
  end

  def self.number_of_accounts
    @@bank_accounts
  end

  private
    def create_account
      Array.new(10).map { rand(1..9) }.join
    end
end
####################################################################################
####################################################################################
####################################################################################


# my_account = BankAccount.new
# puts my_account.interest_rate
