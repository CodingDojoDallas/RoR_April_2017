class MyClass
  def some_method
    puts "This is an instance method"
  end
end
something = MyClass.new
something.some_method


class User
	attr_accessor :first,:last
	def initialize(f_name,l_name)
		@first = f_name
		@last = l_name
	end

	def self.cool
		puts "Class method"  #Class method 
	end	
	
	def full_name
		puts "i am #{first} #{last}"
	end
	
	def say_hello
		puts "Hello!"
	end
end

Will = User.new("William","Blackwell")
Will.full_name
Will.say_hello	
User.cool


class Job
	@@no_of_jobs = 0
	def initialize(opening,job,pay)
		@job_opening = opening
		@job_title = job
		@job_pay = pay
		@@no_of_jobs += 1
		puts "jobs available: #{@@no_of_jobs}"
	end
	
	def display_all
		puts "Postitions available: #{@job_opening}"	
		puts "Job Title: #{@job_title}"
		puts "Salary: #{@job_pay}"
	end
end

job1 = Job.new(2,"Coding instructor","95k")
job1.display_all
job2 = Job.new(5,"Teacher Assistant","TBD")
job2.display_all		