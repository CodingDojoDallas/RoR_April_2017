
# shuffle, reset and deal

a = {:suite => "Diamonds", :number => "2"}
b = {:suite => "Spades", :number => "3"}
c = {:suite => "Clubs", :number => "4"}
d = {:suite => "Hearts", :number => "5"}
suite = [a, b, c, d,]
number = (2..10)

# puts "You have #{names.length} names in the 'names' array"
suite.each {|name| puts "Your card is the #{name[:number]} of #{name[:suite]} "}

# puts names.shuffle
puts number.to_a.shuffle.to_s

# suite.each {|name| puts "Your card is the #{name[:number]} of #{name[:suite]} "}

suites = ["Diamonds", "Spades", "Clubs", "Hearts"]
puts suites.shuffle.to_s

numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13]
puts numbers.shuffle.to_s


puts ("************")

deck = (suites + numbers)
puts deck.to_s
