require_relative 'card'
class Deck
  attr_accessor :card_box
  def initialize
    make_deck
    shuffle
  end

  def make_deck
    face = %w(2 3 4 5 6 7 8 9 10 K Q J A)
    suit = %w(Hearts Diamonds Spades Clubs)
    self.card_box = []

    face.each do |f|
      suit.each do |s|
        card_box << Card.new(f, s)
      end
    end
  end

  def shuffle
    card_box.shuffle!
  end

  def deal_cards
    card_box.shift
  end
end
