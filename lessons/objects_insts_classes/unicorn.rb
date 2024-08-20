class Unicorn

    attr_reader :name, 
                :color, 
                :magical_powers

    def initialize(name, color)
#whatever code is in here gets run wehn .new is called on the class
        @name=name
        @color=color
        @magical_powers= [] #empty array by default
    end

    def say_hello
        puts "Hello, my name's #{name}"
    end

    def add_power(power)
        @magical_powers << power #shovel method
       # @magical_powers.add(power); another way
    end

end

