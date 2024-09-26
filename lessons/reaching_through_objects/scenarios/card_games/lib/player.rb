class Player
    attr_reader :hand
    
    def initialize(hand)
        @hand = hand

    end

    def order_descending
        rank_order = ['A', 'K', 'Q', 'J', '10', '9', '8', '7', '6', '5','4','3', '2']
       ordered_list= @hand.card_set.sort_by do |card|
            rank_order.index(card.value)
            
        end
        ordered_list.map! do |card|
            "#{card.value} of #{card.suit}"
        end
        #require "pry"; binding.pry

    end
end