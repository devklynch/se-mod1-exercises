class Deck
    attr_reader :card_set

    def initialize(card_set)
        @card_set = card_set
    end

    def random_card
        @card_set.sample
    end
end