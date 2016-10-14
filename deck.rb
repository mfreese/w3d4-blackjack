require_relative 'card.rb'
Class Deck
attr_accessor :card_box

def make_deck
  face = %w(2 3 4 5 6 7 8 9 10 K Q J A)
  suit = %w( Hearts Diamonds Spades Clubs )
  self.card_box = []

  face.each do |face|
  suit.each do |suit|
  card_box << Card.new ( face, suit )
end
end
end
def shuffle
  card_box.shuffle!
end
def deal
  card_box.shift
end
