# puts ruby = ["ant", "bear", "cat"].any? { |word| word.length >= 3 }
# puts ruby = ["ant", "bear", "cat"].each { |word| print word, "--" }
# puts ruby = (1..4).collect { |i| i*i }	
# puts ruby = (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }
# puts ruby = (1..10).find_all { |i| i % 3 == 0 }
# puts ruby = (1..10).reject { |i| i % 3 == 0 }
# puts ruby = 5.upto(10) { |i| print i, " " }

y = ('a'..'z')
puts y.to_a.shuffle.to_s
puts y.include?('6')
puts y.include?('t')
puts y.last
puts y.max
puts y.min



