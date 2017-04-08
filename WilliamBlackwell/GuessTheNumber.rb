

# a = "hello"
# b = "goodbye"

# puts "%s its very nice to see you today, ill talk to you later %s" % [a,b]
# puts "#{a} its very nice to see you today, ill talk to you later #{b}" 


# x = "codingdojo"

# puts x.length
# puts x.class
# puts x.capitalize
# puts x.upcase
# puts x.downcase
# puts x[2]
# puts x.include? "dojo"
# puts "This includes 'Dojo'" if x.include? "dojo"

# x2 = "Will, William, Tom, Thomas"
# y = ""

# puts "y is empty" if y.empty?
# puts "i am a"
# puts "i am a".class
# # puts x2.split(",").to_s
#  puts String.new("i am a new sting")
#  puts "Ruby! " * 2
#  puts "Chunky" << "Bacon"
#  puts "Chunky"[2..3]
#  puts "ruBy".capitalize
def guess_number guess
    number = 25
    if guess == number
    	puts "you got it"
    elsif guess > number 
    	puts "guess was too high"
    else 
    	puts "guess was too low"		
	end 
end
 guess_number 50
 




