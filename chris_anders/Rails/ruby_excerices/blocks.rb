def test
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test { puts "You are in the block" }


def test
  yield 5
  puts "You are in the method test"
  yield 100
end
test { |i| puts "You are in the block #{i}" }


def square(num)
  puts "num is #{num}"
  puts "yield(num) has a value of #{yield(num)}"
end
square(10) {|i| i*i}

def square(num)
  puts "num is #{num}"

  x = yield(num)
  puts "x has a value of #{x}"

  y = yield(num)
  puts "y has a value of #{y}"

end
square(5) {|i| i*i}
