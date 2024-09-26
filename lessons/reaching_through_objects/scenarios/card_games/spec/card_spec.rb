require './lib/card'


RSpec.describe Card do
    it 'exists' do
        card =Card.new("diamonds","A")

        expect(card).to be_an_instance_of(Card)
        expect(card.suit).to eq("diamonds")
        expect(card.value).to eq("A")
    end
end