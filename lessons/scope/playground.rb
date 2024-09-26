class Pets
    attr_reader :name
    def initialize(name)
        @name=name
    end
    def test
        puts @name
    end
end

cat = Pets.new("Edgar")
puts cat.test