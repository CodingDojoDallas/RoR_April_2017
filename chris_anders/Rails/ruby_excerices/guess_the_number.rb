def  guess_number guess
    number = 25
case guess
when 0..24
  puts "guess was too low"
when 26..100
  puts "guess was too high"
when 25
  puts "You have guessed the correct number"
  end
end

puts guess_number  27
puts guess_number  25
puts guess_number  100


def  guess_number guess
number = 25
if guess <= 24
  puts "guess was too low"
elsif guess >= 26
    puts "guess was too high"
else
  puts "You have guessed the correct number"
  end
end

puts guess_number 25
puts guess_number 15
puts guess_number 100



#THIS IS THE ANSWER FROM ONLINE
def guess_number guess
  number = 25
  if guess == number
    return "You got it!"
  elsif guess > number
    return "Guess was too high!"
  else
    return "Guess was too low!"
  end
end

puts guess_number 25
puts guess_number 100
puts guess_number 0
