class Werewolf
    attr_reader :name,
                :location,
                :victims
    
    def initialize(name, location ="London")
        @name = name
        @location = location
        @human = true
        @hungry = false
        @victims = []
    end

    def human?
        @human
    end

    def wolf?
        !@human
    end

    def hungry?
        @hungry
    end

    def change!
        @hungry =true
        @human =!@human
    end

    def consume(victim)
        if @human == true
            "NO!"
        else
            @hungry = false
            victim.status = :dead
            @victims << victim
        end
    end
end


class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end
  end