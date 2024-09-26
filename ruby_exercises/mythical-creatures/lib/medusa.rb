class Medusa
    attr_reader :name,
                :statues

    def initialize(name)
        @name=name
        @statues = []
    end

    def stare(victim)
        victim.stone = true
        if @statues.count == 3
            @statues.first.stone=false
            @statues.shift
            @statues <<victim
        else
            @statues << victim
        end
        #require "pry" ; binding .pry
    end
end

class Person
    attr_reader :name

    attr_accessor :stone

    def initialize(name)
        @name=name
        @stone=false
    end

    def stoned?
        @stone
    end
end