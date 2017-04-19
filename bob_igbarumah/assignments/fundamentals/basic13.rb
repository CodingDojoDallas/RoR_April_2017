#1
#for i in 1..255
#  if i.odd?
#    puts i
#  end
#end

#2
#sum = 0
#for i in 0..10
#  sum+=i
#  puts "New number: #{i} Sum: #{sum}"
#end

#3
def find_max arr
  puts arr.max_by{|number| number}
end

arr = [-1,-3,-5,-7,0]
find_max arr
#4
def find_sum arr
  sum = 0
  for i in 0...arr.length
    sum+=arr[i]
  end
  puts "The sum is #{sum}"
  return sum
end
x = [1,2,3]
find_sum x

def find_avg arr
  sum = find_sum arr
  puts "the avg is #{sum.to_f / arr.length}"
end
y = [1,2,3,4]
find_avg y

#Alternative way of doing it
def det_avg arr
  puts "the average is #{arr.inject(0.0) {|sum, el| sum + el} / arr.size}"
end
 z = [1,2,3,4]
 det_avg z
#5
def get_odd
    array = Array.new
  for i in 1..10
    if i.odd?
      array.push i
    end
  end
  puts "The array with odd numbers  is #{array}"
end

get_odd

#6
def gt_fun arr,y
  array = Array.new
  puts "the length of the array is #{arr.length}"
  for i in 0...arr.length
    if arr[i] > y
      array.push i
    end
  end
  puts "tHE NUMBER OF elements gt than #{y} is #{array.length}"
end

arr = [2,5,6,8]
gt_fun arr,2

#7
def sq_val arr
  array = Array.new
  for i in 0...arr.length
    x = arr[i]*arr[i]
    array.push x
  end
  puts "Array with sq vals are #{array}"
end
sq_val [1, 5, 10, -2]
