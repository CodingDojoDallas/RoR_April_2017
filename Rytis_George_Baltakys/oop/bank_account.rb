class BankAccount
	attr_reader :checking_balance, :savings_balance, :account_number

	def initialize checking_initial_ammount, savings_initial_ammount
		@checking_balance = checking_initial_ammount
		@savings_balance = savings_initial_ammount

		@account_number = generate_account_number
		@interest_rate = 0.30
	end

	def deposit_checking amount
		@checking_balance += amount
	end

	def deposit_savings amount
		@savings_balance += amount
	end
	
	def withdraw_checking amount
		if amount > @checking_balance
			puts "Insufficient funds"
		else
			@checking_balance -= amount
		end
	end

	def withdraw_savings amount
		if amount > @savings_balance
			puts "Insufficient funds"
		else
			@savings_balance -= amount
		end
	end

	def total_balance
		checking_balance + savings_balance
	end

	def total_accounts
		2
	end

	def account_information
		puts "The account number is #{@account_number}, there is a total of $#{total_balance} in the account. The checking balance is $#{checking_balance} and the savings balance is $#{savings_balance}. The interest rate is $#{@interest_rate}"
	end

	private
		def generate_account_number
			rand(9999999999)
		end
end

a = BankAccount.new 1000000, 20000000
puts "Account number: #{a.account_number}"
puts "Checking balance: $#{a.checking_balance}"
puts "Savings balance: $#{a.savings_balance}"
puts "Deposit $100 into checking"
a.deposit_checking 100
puts "Checking balance: $#{a.checking_balance}"
puts "Deposit $100 into savings"
a.deposit_savings 100
puts "Savings balance: $#{a.savings_balance}"
puts "Withdraw $50 from checking"
a.withdraw_checking 50
puts "Checking balance: $#{a.checking_balance}"
puts "Withdraw $50 from savings"
a.withdraw_savings 50
puts "Savings balance: $#{a.savings_balance}"
puts "Withdraw $350 from checking"
a.withdraw_checking 350
puts "Checking balance: $#{a.checking_balance}"
puts "Withdraw $350 from savings"
a.withdraw_savings 350
puts "Savings balance: $#{a.savings_balance}"
puts "Total balance: $#{a.total_balance}"
puts "Total accounts: #{a.total_accounts}"
a.account_information