class Deck
  def initialize
    @suits = ["H", "D", "S", "C"]
    @faces = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    @cards = []
    # for i in 0...@suits.length
    #   for j in 0...@faces.length
    #     @cards.push("#{@faces[j]}#{@suits[i]}")
    #   end
    # end

    @suits.each { |suit_elem| @faces.each { |face_elem| @cards.push("#{face_elem}#{suit_elem}") } }
  end

  def shuffle
  end

  def reset
  end

  def deal
  end

end

deck = Deck.new
puts deck.inspect


class Player
  attr_accessor
end
