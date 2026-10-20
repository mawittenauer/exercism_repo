module Blackjack
  def self.parse_card(card)
    case card
      when "ace" then 11
      when "two" then 2
      when "three" then 3
      when "four"	then 4
      when "five"	then 5
      when "six" then 6
      when "seven" then 7
      when "eight" then 8
      when "nine"	then 9
      when "ten"  then 10
      when "jack"	then 10
      when "queen"	then 10
      when "king"	then 10
      when "other" then 0
      else 0
    end
  end

  def self.card_range(card1, card2)
    card1val = self.parse_card(card1)
    card2val = self.parse_card(card2)
    sum = card1val + card2val

    case sum
      when 4..11 then "low"
      when 12..16 then "mid"
      when 17..20 then "high"
      when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    player_card_range = self.card_range(card1, card2)
    dealer_card_val = self.parse_card(dealer_card)
    case
      when card1 == "ace" && card2 == "ace" then "P"
      when player_card_range == "blackjack" && dealer_card_val < 10 then "W"
      when player_card_range == "blackjack" && dealer_card_val >= 10 then "S"
      when player_card_range == "high" then "S"
      when player_card_range == "mid" && dealer_card_val < 7 then "S"
      when player_card_range == "mid" && dealer_card_val >= 7 then "H"
      when player_card_range == "low" then "H"
    end
  end
end
