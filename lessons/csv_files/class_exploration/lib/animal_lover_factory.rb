require 'CSV'
class AnimalLoverFactory
    attr_reader :animal_lovers
    def initialize
        @animal_lovers = []

    end

    def create_animal_lovers(file_path)
        CSV.foreach(file_path, headers:true,header_converters: :symbol) do |row|
            @animal_lovers << AnimalLover.new(row[:id].to_i, row[:first_name], row[:last_name], row[:age].to_i)
            
        end
        @animal_lovers
    end
end