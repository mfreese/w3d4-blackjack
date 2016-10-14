class Card
    attr_accessor :face,
                  :suit,
                  :value
    def initialize (face, suit)
        self.face = face
        self.suit = suit
        face_value
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
      if
        face == "A"
        self.value = 11
        elsif
          face == "K"
        self.value = 10
      elsif
        face == "Q"
        self.value = 10
      elsif
        face == "J"
        self.value = 10
      else
        self.value = face.to_i
      end
      def + (other)
        self.value + other.value
      end
    end
  def to_s
    "a #{face} of #{suit}"
  end
end

  # card_one = Card.new ("J", "Hearts")
  # puts card_one.inspect
