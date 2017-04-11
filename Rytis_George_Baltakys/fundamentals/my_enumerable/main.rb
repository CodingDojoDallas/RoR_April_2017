require_relative 'my_enumerable'

class Array
	include MyEnumerable
end

arr = [1,2,3,4,5]

arr.my_each { |i| puts i }