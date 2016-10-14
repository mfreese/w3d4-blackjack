require_relative 'deck'
class BlackJack

attr_accessor :game, :player_hand, :dealer_hand, :full_deck, :player_score, :dealer_score

def initialize (full_deck, player_hand, dealer_hand)
self.full_deck = Deck.new
self.player_hand = []
self.dealer_hand = []
end

  def play
    puts "To play BlackJack press enter"
    deal_hand
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
  player_hand
  deal_hand
  show_hand
  puts "You have #{player_score} with #{player_hand}"
  puts "Dealer has a #{dealer_score} with #{dealer_hand}"
  unless
    blackjack || bust
    puts "Do You Want To Hit or Stay?"
  end
end
end
def player_total
  self.player_total = player_hand.reduce (0){ |sum, card| sum + card.value }
end
def dealer_total
  self.dealer_total = dealer_hand.reduce (0){ |sum, card| sum + card.value}
end
def blackjack
  player_value blackjack == 21
end
def bust
  player_score > 21
end
def dealer_bust
  dealer_bust > 21
end
def player_hit
  player_hit = 

end
end


end
