class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    Card.allRanks.map { |rank|
      Card.allSuits.map { |suit|
        @cards << Card.new(suit, rank)
      }
    }
    @cards.flatten
  end

  def choose_card
    @cards.delete(@cards.sample)
  end
end

class Card
  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def self.allRanks
    ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  end

  def self.allSuits
    ["Hearts", "Clubs", "Diamonds", "Spades"]
  end
end