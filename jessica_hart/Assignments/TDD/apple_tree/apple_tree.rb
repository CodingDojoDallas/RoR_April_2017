class AppleTree
  attr_accessor :age
  attr_reader :height, :apple_count

  def initialize
    @apple_count = 0
    @age = 0
    @height = 1
  end

  def year_gone_bye
    @age += 1
    @height = @height + @height * 0.1
    if @age.between?(3, 10)
      @apple_count += 2
    end
  end

  def pick_apples
    @apple_count = 0
  end
end

=begin ## Alternate age and height calculation: ##
@apple_count += 2 if (4..10).include?(@age)
@height += ten_percent_of(@height)
private
    def ten_percent_of h
      (h * 0.1).round(2)
    end
=end
