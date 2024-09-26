class Building
    attr_reader :building_number,
                :building_name,
                :list_apartment
    def initialize(building_number,building_name)
        @building_number = building_number
        @building_name = building_name
        @list_apartment = []
    end

    def add_apartment(apartment)
        @list_apartment << apartment
    end
end