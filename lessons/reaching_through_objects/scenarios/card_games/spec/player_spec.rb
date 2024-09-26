require './lib/card'
require './lib/deck'
require './lib/player'

RSpec.describe Player do
    before(:each) do
        @card1 =Card.new("diamonds","A")
        @card2 =Card.new("spades","2")
        @card3 =Card.new("hearts","9")
        @card4=Card.new("clubs","A")
        @card5=Card.new("clubs","K")
        @card6=Card.new("diamonds","3")
        @card7=Card.new("hearts","A")
        @card8=Card.new("spades","8")
        @card9=Card.new("diamonds","J")
        @card_set= [@card1, @card2, @card3, @card4, @card5, @card6]
        @hand=Deck.new(@card_set)
        @player = Player.new(@hand)
    end

    it 'can iniitalize' do
        expect(@player).to be_an_instance_of(Player)
    end

    it 'can order' do
        expect(@player.order_descending).to eq(["A of diamonds", "A of clubs", "K of clubs", "9 of hearts", "3 of diamonds", "2 of spades"])
    end
end

