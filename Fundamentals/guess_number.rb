# Challenge: try using unless instead of if as much as you can

def guess_number guess
    number = 25
    unless guess == number
      unless guess > number
        return "Guess was too low!"
      end
      return "Guess was too high!"
    end
    return "You got it!"
end

puts guess_number 30
