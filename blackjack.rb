require_relative 'deck'
class BlackJack

attr_accessor :game, :player_hand, :dealer_hand, :full_deck :player_score, :dealer_score

def initialize (full_deck, player_hand, dealer_hand)
self.full_deck = Deck.new
self.player_hand = []
self.dealer_hand = []
end

  def play
    puts "To play BlackJack press enter"
    make deck
    deal
    round
    winner
    rematch
  end

  def deal_hand
    2.times do
      player_hand << full_deck.deal_hand
      dealer_hand << full_deck.deal_hand
    end
  end
def round
  

end
def player_total
  self.player_total = player_hand.reduce (0){ |sum, card| sum + card.value }
end
def dealer_total
  self.dealer_total = dealer_hand.reduce (0){ |sum, card| sum + card.value}
end

end



end
