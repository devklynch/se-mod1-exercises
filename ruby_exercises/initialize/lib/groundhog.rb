class Groundhog
    attr_accessor :name

    def initialize(name)
        @name=name
    end
    def say_hello
        "Hello #{name} and then the other one is #{@name}"
    end

end