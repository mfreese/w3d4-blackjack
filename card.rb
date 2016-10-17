class Card
  attr_accessor :face,
                :suit,
                :value
  def initialize(face, suit)
    self.face = face
    self.suit = suit
    self.value = face_value
  end

  def suit_list
    %w(Hearts Clubs Diamonds Spades)
  end

  def face_list
    %w(2 3 4 5 6 7 8 9 10 J Q K A)
  end

  def value_list
    %w(2 3 4 5 6 7 8 9 10 11 12 13 14)
  end

  def face_value
    if face == 'A'
      11
    elsif %w(K Q J).include? face
      10
    else
      face.to_i
    end
  end

  def +(other)
    value + other.value
  end

  def to_s
    "a #{face} of #{suit}"
  end
end

# card_one = Card.new ("J", "Hearts")
# puts card_one.inspect
