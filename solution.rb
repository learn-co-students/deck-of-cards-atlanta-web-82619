require 'pry'

class Deck
  attr_accessor :cards

  def initialize
    @cards = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].product(["Hearts", "Clubs", "Diamonds", "Spades"]).map {|s,r| Card.new(s,r)}
  end

  
  def choose_card
    card = @cards.sample
    @cards.delete(card )
  end
end

class Card
  attr_reader :rank, :suit

  @@all = []
  def initialize(suit, rank)
    @rank = rank
    @suit = suit
    @@all << self
  end

  def self.all
    @@all
  end
end

ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

deck_of_cards = ranks.product(suits).map {|r,s| Card.new(r,s)}
# binding.pry