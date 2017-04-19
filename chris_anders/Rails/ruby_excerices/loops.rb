#this will log the nuber 0 - 4 and not include the number 5
i = 0
num = 5
while i < num do
   puts "Inside the loop i = #{i}"
   i +=1
end

#the loop will end when it gets to the number 2
puts("***************")
i = 0
num = 5
while i < num do
  puts "Inside the loop i = #{i}"
  i += 1
  break if i == 2
end

#this will log all the number from 0 - 5
puts("***************")
for i in 0..5
  puts "Value of local variable is #{i}"
end


#the loop will end when it gets to the number 2
puts("***************")
for i in 0..5
  puts "Value of local variable is #{i}"
  break if i == 2
end


#this will skip the number 2
puts("***************")
for i in 0..5
  next if i == 2
  puts "Value of local variable is #{i}"
end
