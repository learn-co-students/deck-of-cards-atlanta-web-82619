class Deck
    attr_reader :cards
  
    def initialize
      @cards = []
      make_cards
    end
  
    def make_cards
      ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
      suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
  
      suits.each do |suit|
        ranks.each do |rank|
          @cards << Card.new(suit, rank)
        end
      end
    end
  
    def choose_card
      @cards.pop
    end
  end
  
  class Card
    attr_accessor :rank, :suit
  
    def initialize(suit, rank)
      @rank = rank
      @suit = suit
    end
  end
