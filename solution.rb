class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

    rank.each do
      suit.each do
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    cards.delete_at(rand(1..52))
  end

end



class Card

  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end

end
