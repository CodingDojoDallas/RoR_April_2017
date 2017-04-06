# Have students get in groups and build deck of cards. The Deck class should have 52 cards divided into 4 suits. It should also have the following methods: shuffle, reset and deal

# Each player should have a name and a hand. They should be able to draw and discard cards.

class Deck
	attr_accessor :cards

	def initialize()
		reset
	end

	def reset
		@cards = []
		suit = ['Diamonds','Hearts','Spades','Clubs']
		faces = ('2'..'10').to_a + ['J','Q','K','A']
		faces.each do |val|
			suit.each do |suit|
				@cards.push( Card.new suit, val )
			end
		end
	end

	def show
		@cards.each {|card| puts "#{card.val} of #{card.suit}  "}
		puts "#{@cards.length} cards total"
	end

	def shuffle
		@cards.shuffle!
	end

	def deal
		@cards.pop
	end

end

class Card
	attr_accessor :suit, :val
	def initialize(suit, val)
		@suit = suit
		@val = val
	end
end

class Player
	attr_accessor :name

	def initialize(name)
		@name = name
		@hand = []
	end
	
	def draw(card)
		@hand.push(card)
	end

	def discard
		@hand.pop
	end
end

deck = Deck.new
deck.show
deck.shuffle
deck.show
card = deck.deal
puts "Dealer dealt: #{card.val} of #{card.suit}  "
card = deck.deal
puts "Dealer dealt: #{card.val} of #{card.suit}  "
card = deck.deal
puts "Dealer dealt: #{card.val} of #{card.suit}  "
deck.show
deck.reset
deck.show
deck.shuffle
player = Player.new 'Bob'
card = deck.deal
puts "Dealer dealt #{player.name}: #{card.val} of #{card.suit}  "
player.draw(card)
card = deck.deal
puts "Dealer dealt #{player.name}: #{card.val} of #{card.suit}  "
player.draw(card)
card = deck.deal
puts "Dealer dealt #{player.name}: #{card.val} of #{card.suit}  "
player.draw(card)
card = player.discard
puts "Player #{player.name} discarded: #{card.val} of #{card.suit}  "

player2 = Player.new 'William'
card = deck.deal
puts "Dealer dealt #{player2.name}: #{card.val} of #{card.suit}  "
player2.draw(card)
player2 = Player.new 'William'
card = deck.deal
puts "Dealer dealt #{player2.name}: #{card.val} of #{card.suit}  "
player2.draw(card)
player2 = Player.new 'William'
card = deck.deal
puts "Dealer dealt #{player2.name}: #{card.val} of #{card.suit}  "
player2.draw(card)
card = player.discard
puts "Player #{player2.name} discarded: #{card.val} of #{card.suit}  "
puts "#{deck.cards.length} cards total"