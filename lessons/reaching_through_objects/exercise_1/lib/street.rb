class Street
    attr_reader :name

    def initialize (name)
        @name = name
        @buildings =[]
    end

    def add_building(building)
        @buildings << building
    end

    def buildings
       buildings_array= @buildings.map do |building|
                building.building_name
                #require "pry" ; binding.pry
            end
        #require "pry" ; binding.pry
        test=buildings_array.sort_by do |name|
            name
        end
        test
        #require "pry" ; binding.pry
    end

    def number_of_available_apartments
       test= @buildings.map do |building|
            building.list_apartment.find_all do |apartment|
            require "pry" ; binding.pry
                apartment.is_rented? ==false
            end
            #require "pry" ;binding.pry
        end.flatten.count
        #require "pry" ;binding.pry
    end

    # def list_available_apartment
    #     available_hash= {}
    #     @buildings.each do |building|
    #         building.list_apartment.each do |apartment|
    #             require "pry" ; binding.pry
    #             available_hash
    #         end
    #     end

    # end

        
    
end