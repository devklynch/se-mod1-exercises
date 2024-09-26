class Centaur
    attr_accessor :name,
                :breed,
                :standing

    def initialize (name, breed)
        @name = name
        @breed = breed
        @tired_tracker = 0
        @standing = true
        @laying = false
    end

    def shoot
        if @tired_tracker >= 3 || @standing == false
            "NO!"
        else
            @tired_tracker +=1
                "Twang!!!"
        end
            
    end

    def run
        if @standing == false
            "NO!"
        else
        @tired_tracker +=1
        "Clop clop clop clop!"
        end
    end

    def cranky?
        @tired_tracker > 2
    end

    def standing?
        @standing
    end

    def laying?
        @laying
    end

    def sleep
        if @standing == true
            "NO!"
        else
            @tired_tracker = 0
        end
    end

    def lay_down
        @standing = false
        @laying = true
    end

    def stand_up
        @standing = true
        @laying =false
    end

    def drink_potion
        if @standing == true
            @tired_tracker = 0
        else
            "NO!"
        end
    end
end