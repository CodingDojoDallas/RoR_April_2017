class Card
  attr_accessor :face, :suit
  FACES = (2..10).to_a + %w(J Q K A)
  SUITS = %w(Spades Hearts Diamonds Clubs)

  def initialize(suit, face)
    @face = face
    @suit = suit
  end
end


class Deck
  attr_reader :deck

  def initialize
    @deck = create_deck.shuffle
  end

  def shuffle
    @deck = @deck.shuffle
    puts "Deck shuffled"
  end

  def reset
    @deck = create_deck.shuffle!
    puts "Deck reset"
  end

  def deal
    random_card = rand(@deck.length)
    @deck.delete_at(random_card)
  end

  private
    def create_deck
      Card::SUITS.flat_map do |suit|
        Card::FACES.map do |face_value|
          Card.new(suit, face_value)
        end
      end
    end
end

class Player
  def initialize(name)
    @name = name
    @hand = []
  end

  def draw(card)
    @hand << card
  end

  def discard(card)
    @hand.delete(card)
  end

  def show_hand
    @hand
  end
end
