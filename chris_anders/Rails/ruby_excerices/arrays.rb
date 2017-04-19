a = ["coding", "dojo", "ruby", "chris", "facebook"]
b = [5, 3, 7, 9, 2, 4, 10]
c = ["dojo", 9]

x = a+b
puts x
puts("********************")

#this will subtract dojo and the number 9
y = (a+b)-c
puts y.to_s
puts("********************")

#this will put the result in one long array
puts x.to_s
puts("********************")

puts a.length
puts "Length of a is #{a.length}"
puts("********************")

puts "Length of a is #{b.length}"
puts b.length
puts("********************")

#this will shuffe around then array of a (it is also now in a string)
puts a.shuffle.to_s
puts("********************")


#this will pop off the last index in the a array
a.pop
puts a.to_s

puts("********************")
#this will delte chris from the array of a(it is also now in a string)
a.delete("chris")
puts a.to_s

puts("********************")
#this will pop off the last index in the a array
a.pop
puts a

#this will add bobby to the end of the array
puts("********************")
a.push("bobby")
puts a

puts("********************")
#this will reversethe order of the b array(it is also now in a string)
puts b.reverse.to_s

puts("********************")
puts a.join('-')

puts("********************")
puts b.join('-')


puts("********************")
#at the 3rd index inser the word "go"
puts a.insert(3, "go")

puts("********************")
#this will show me what is at the 0 index of array b
puts b.at(0)

puts("********************")
#this will show me what is at the 4 index of array b
puts b.fetch(4)

puts("********************")
puts b.delete(5)
puts b.to_s
