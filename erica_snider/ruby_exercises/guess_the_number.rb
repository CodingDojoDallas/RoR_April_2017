# def guess_number guess
#   number = 25
#   if guess > number
#     return "Guess was too high."
#   elsif guess < number
#     return "Guess was too low."
#   else
#     return "You got it!"
#   end
# end

def guess_number guess
  number = 25
  return "You got it!" unless guess!=number
  return "Guess was too high." unless guess<number
  return "Guess was too low." unless guess>number
end

puts guess_number 27
