require './lib/apartment'
require './lib/room'

RSpec.describe Apartment do
        it 'exists' do
            apartment = Apartment.new
            expect(apartment).to be_an_instance_of(Apartment)
        end

        it 'can check if rented' do
            apartment= Apartment.new

            expect(apartment.is_rented?).to eq(false)
        end

        it 'can be rented' do
            apartment = Apartment.new

            expect(apartment.is_rented?).to eq(false)

            apartment.rent

            expect(apartment.is_rented?).to eq(true)
            expect(apartment.rent).to eq("Cannot rent-already rented")
        end

        it 'can add rooms' do
            apartment = Apartment.new
            bathroom = Room.new("bathroom")

            apartment.add_room(bathroom)
            apartment.add_room(Room.new("laundry"))
            apartment.add_room(Room.new("kitchen"))
            apartment.add_room(Room.new("bedroom"))
            expect(apartment.rooms.count).to eq(4)
        end

        it 'can list rooms alphabetically' do
            apartment = Apartment.new
            bathroom = Room.new("bathroom")
            apartment.add_room(bathroom)
            apartment.add_room(Room.new("laundry"))
            apartment.add_room(Room.new("kitchen"))
            apartment.add_room(Room.new("bedroom"))
            require "pry" ; binding. pry
            expect(apartment.list_rooms_by_name_alphabetically). to eq(["bathroom", "bedroom", "kitchen", "laundry"])
        end
end
