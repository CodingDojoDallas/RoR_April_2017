a = [3,5,1,2,7,9,8,13,25,32]
puts a.inject(0){|sum,x| sum + x}

names = ["John","KB","Oliver","Cory","Matthew","Christopher"]
puts names.shuffle.reject {|i|  i.length < 5}

a = ("a".."z")
puts arr = a.to_a.shuffle.last
 v = arr = a.to_a.shuffle.first
 puts v
if v == "a"||v =="e"||v =="i"||v =="o"||v =="u"
	puts "First letter is a vowel"
end	

puts Array.new(10) { rand(55..100) }.sort

 x = Array.new(5) { rand(100) }
 puts x*","

puts (65+rand(26))



 x = Array.new(5) { rand(100) }.to_s
 puts x

puts (1..5).map { ('a'..'z').to_a[rand(26)] }.join('')



