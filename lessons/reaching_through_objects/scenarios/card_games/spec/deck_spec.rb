require './lib/card'
require './lib/deck'

RSpec.describe Deck do
    before(:each) do
        @card1 =Card.new("diamonds","A")
        @card2 =Card.new("spades","2")
        @card3 =Card.new("hearts","9")
        @card4=Card.new("clubs","A")
        @card5=Card.new("clubs","K")
        @card6=Card.new("diamonds","3")
        @card_set= [@card1, @card2, @card3, @card4, @card5, @card6]
        @deck = Deck.new(@card_set) 
    end

    it 'can initialize' do
    
        expect(@deck).to be_an_instance_of(Deck)
        expect(@deck.card_set[0]).to be_an_instance_of(Card)
    end

    it 'can pick randomly' do
        expect(@card_set).to receive(:sample).and_return(@card1)
        expect(@deck.random_card).to eq(@card1)
    end

end