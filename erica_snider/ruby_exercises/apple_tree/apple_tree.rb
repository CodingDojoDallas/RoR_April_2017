class AppleTree

  attr_accessor :age
  attr_reader :height, :count

  def initialize
    @age = 0
    @height = 5
    @count = 0
  end

  def year_gone_by
    @age += 1
    @height *= 1.1
    @count += 2 if @age > 3 and @age <= 10
  end

  def pick_apples
    @count = 0
  end

end


####################################################################################
# PLATFORM SOLUTION ################################################################
####################################################################################
class AppleTree
  attr_accessor :age
  attr_reader :height, :apple_count

  def initialize
    @age = 0
    @height = 10
    @apple_count = 0
  end

  def year_gone_by
    @age += 1
    @height += ten_percent_of(@height)
    @apple_count += 2 if (4..10).include?(@age)
  end

  def pick_apples
    @apple_count = 0
  end

  private  # private so that it won't be shown when listing the class methods; not accessible outside of the class. This is a good way to separate functions internal to the class but keep the class 'clean' to the outside.
    def ten_percent_of h
      (h * 0.1).round(2)
    end
end
####################################################################################
####################################################################################
####################################################################################
