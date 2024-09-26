class Rabbit
    attr_accessor :name,  
                :num_syllables
    def initialize (rabbit)
        @name = rabbit[:name]
        @num_syllables = rabbit[:num_syllables]
    end

    def name
        if @num_syllables == 2
            @name = @name + " Rabbit"
        end
        @name
    end
end