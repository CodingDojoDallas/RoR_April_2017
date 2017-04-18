 x = "codingDojo"

puts x

#this will give the the length of the string of x
puts x.length

#this will tell me what type of class x is (STRING)
puts x.class


#This will capitalize the first letter of the string
puts x.capitalize

#this will capitalize all letters in the string
puts x.upcase

#this will lowercase all letters in the string
puts x.downcase


#this will give the letter at the 2nd index (d)
puts x[2]


#this will return FALSE because it is case sensitive
puts x.include?("dojo")

#this will return TRUE because it is case sensitive
puts x.include?("Dojo")

puts "This word has the word 'Dojo'" if x.include?("Dojo")


#this will split the name up and put them on their own row
x = "Bobby, Justin, Christopher, Marcus"

puts x.split(",")

#this will put the name in a string
puts x.split(",").to_s

#this will retun Y is empty because there's nothing in the string
y = ""

puts "Y is empty" if y.empty?
