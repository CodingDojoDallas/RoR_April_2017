class BankAccount
	@accounts = 0
	INTEREST_RATE = 0.01.freeze
  def initialize
  	@checking = 900
  	@savings = 3000
  	@accounts = 2  
  	@interest_rate = INTEREST_RATE
  	def deposit_checking
  	@checking += 100
  	self
  end	
  def deposit_savings
  	@savings += 20
  	self
  end
  end	
  def total 
  	puts total = @checking + @savings
  	self
  end

  def show
  	puts account_number
  end
  def how_many
  	puts "There are #{@accounts} types of accounts in this Bank"
  	self
  end	
  def checking_total 
  	puts "Total available in checkings: #{@checking}"
  	self
  end
  def account_information
  	show
  	total
  	checking_total
  	savings_total
  	puts @interest_rate
  end	
  def savings_total 
  	puts "Total available in savings: #{@savings}"
  	self
  end 	
  def deposit_checking
  	@checking += 100
  	self
  end	
  def deposit_savings
  	@savings += 20
  	self
  end
  def withdraw_checking
  	@checking -= 50
  	self
  end	
  def withdraw_savings
  	@savings -= 10
  	self
  end  
  private
  def gen_acc
  	puts @account_num = rand(999999999999999)
  end	
  def account_number
  	gen_acc
  end
end

mine = BankAccount.new
wills = BankAccount.new
mine.total
mine.deposit_savings.savings_total
mine.deposit_checking.deposit_checking.checking_total
wills.checking_total
wills.withdraw_checking.checking_total
mine.show
wills.show
wills.how_many


wills.account_information
ashley =BankAccount.new
ashley.withdraw_checking.checking_total







