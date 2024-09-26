class Jar
    attr_reader :maximum_capacity,
                :cookies

    def initialize(maximum_capacity)
        @maximum_capacity = maximum_capacity
        @cookies = []
    end

    def current_num_cookies
        if @cookies.count == nil
            0
        else
            @cookies.count
        end
    end
end