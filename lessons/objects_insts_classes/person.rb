class Person

    attr_reader :name, 
                :age, 
                :favorite_foods

    def initialize(name, age)
        @name=name
        @age=age
        @favorite_foods = []
    end

    def have_birthday
        @age+=1
    end

    def add_favorite_foods(food)
        @favorite_foods << food
     
    end

end