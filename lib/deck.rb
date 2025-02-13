class Deck
  require 'rspec'
  require './lib/card'
  require 'pry'
  attr_reader :cards

def initialize(cards)
  @cards = cards
end

def rank_of_card_at(index)
  @cards[index].rank
end

def high_ranking_cards
  # @cards.find_all { |card| card.rank >= 11}
  @cards.find_all do |card|
     card.rank >= 11
   end
end

def percent_high_ranking
  decimal = high_ranking_cards.length.to_f / @cards.length.to_f
  percent = (decimal * 100).round(2)
end

def remove_card
  @cards.shift
end

def add_card(card)
  @cards.push(card)
end

end
