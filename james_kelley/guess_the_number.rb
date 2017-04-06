def guess_number guess
	number = 25
    puts "you got it!" if guess == 25
    puts "the guess was too high!" if guess > 25
    puts "the guess was too low!" if guess < 25   
end 
guess_number 10