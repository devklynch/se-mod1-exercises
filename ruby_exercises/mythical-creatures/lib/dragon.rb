class Dragon
    attr_reader :name,
                :color,
                :rider,
                :hungry

    def initialize(name,color,rider)
        @name=name
        @color=color
        @rider=rider
        #@hungry=true
        @meal_count=0
    end

    def hungry?
        @meal_count < 3
    end

    def eat
        @meal_count+=1
    end
end