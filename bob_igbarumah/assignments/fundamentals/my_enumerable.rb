module MyEnumerable
  def my_each
    arr = Array.new
    for i in 0...self.length
       yield self[i]

    end

  end
end

class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
puts "Got here"
[1,2,3,4,5].my_each { |i| puts i * 10 } # => 10 20 30 40
