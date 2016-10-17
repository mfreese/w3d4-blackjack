require_relative 'deck'
class BlackJack
  attr_accessor :game,
                :player_hand,
                :dealer_hand,
                :full_deck,
                :player_score,
                :dealer_score

  def initialize
    self.full_deck = Deck.new
    self.player_hand = []
    self.dealer_hand = []
    self.player_score = 0
    self.dealer_score = 0
  end

  def play
    initialize
    puts 'To play BlackJack press enter'
    gets
    deal_hand
    round
    results
    rematch
  end

  def deal_hand
    2.times do
      player_hand << full_deck.deal_cards
      dealer_hand << full_deck.deal_cards
    end
    player_total
    dealer_total
  end

  def round
    player_hand
    dealer_hand
    puts "You have #{player_score}  #{show_hand}"
    puts "Dealer is showing #{dealer_hand[1]}"
    hit_or_stay
    dealer_turn
  end

  def hit or stay
    unless blackjack || bust
      puts 'Do You Want To Hit or Stay?'
      desire = gets.chomp.downcase
      player_hit if desire == 'hit'
    end
  end
  
  def player_total
    self.player_score = player_hand.reduce(0) { |sum, card| sum + card.value }
  end

  def dealer_total
    self.dealer_score = dealer_hand.reduce(0) { |sum, card| sum + card.value }
  end

  def blackjack
    player_score == 21
  end

  def bust
    player_score > 21
  end

  def dealer_bust
    dealer_score > 21
  end

  def player_hit
    unless bust
      player_hand << full_deck.deal_cards
      puts player_hand
      player_total
      puts player_score
      unless bust
        puts 'Do You Want To Hit Again?'
        another = gets.chomp.downcase
        player_hit if another == 'hit'
      end
    end
  end

  def show_hand
    puts player_hand
  end

  def dealer_turn
    dealer_total
    unless dealer_bust
      if dealer_score < 16
        dealer_hit
        dealer_turn
      end
    end
  end

  def rematch
    puts 'Want a REMATCH?'
    rematch = gets.chomp.downcase
    if rematch == 'y'
      play
    else
      exit
    end
  end

  def dealer_hit
    dealer_hand << full_deck.deal_cards
    puts dealer_hand
  end

  def results
    if blackjack puts 'YOU WIN!!!'
    elsif bust puts 'YOU LOSE'
    elsif player_total > dealer_total { puts 'YOU WIN!!!' }
    elsif player_total == dealer_total { puts 'YOU WIN!!!' }
    elsif dealer_bust puts 'YOU WIN!!!'
    else puts 'YOU LOSE'
    end
  end
end
BlackJack.new.play
