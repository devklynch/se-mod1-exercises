require './lib/room'

RSpec.describe Room do
        it 'exists' do
            bathroom = Room.new("bathroom")
            expect(bathroom).to be_an_instance_of(Room)
            expect(bathroom.name).to eq("bathroom")
        end
end
