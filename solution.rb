class Deck
	attr_accessor :cards
	@@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
	@@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

	def initialize
		@cards = []
		@@ranks.each do |rank|
			@@suits.each do |suit|
				@cards << Card.new(rank, suit)
			end
		end

	end

	def choose_card 
		card = self.cards.sample
		self.cards.delete(card)
		card
	end

end

class Card
	attr_accessor :rank, :suit

	def initialize(suit, rank)
		@rank = rank#["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].sample

		@suit = suit#["Hearts", "Clubs", "Diamonds", "Spades"].sample
	end

end
