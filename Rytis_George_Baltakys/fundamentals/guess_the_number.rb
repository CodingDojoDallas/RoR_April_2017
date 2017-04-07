def guess_number guess
	guess = guess.to_i
	number = rand(5) + 1
	if guess == number
		"You got it!"
	elsif guess > number
		"Too high"
	else
		"Too low"
	end
end

puts "I'm thinking of a number, what's your guess?"
puts guess_number gets
