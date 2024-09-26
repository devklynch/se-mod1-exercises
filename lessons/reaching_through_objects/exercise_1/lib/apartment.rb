class Apartment
    attr_reader :rooms
    def initialize
        @rented = false
        @rooms = []
    end

    def is_rented?
        @rented
    end

    def rent
        if @rented == false
            @rented =true
        else
            "Cannot rent-already rented"
        end
    end

    def add_room(room)
        @rooms << room
    end

    def list_rooms_by_name_alphabetically
        room_names = @rooms.map do |room|
            room.name
        end
        alpha_rooms = room_names.sort_by do |room|
             room
        end
        alpha_rooms
    end

end