class Bag
    attr_accessor :candies
    def initialize
        @candies= []
    end

    def empty?
        @candies.empty?
        #@candies == []
    end

    def count
        @candies.count
    end

    def add_candy(candy)
        @candies << candy
    end

    def contains?(content)
        candy_types = @candies.map do |candy|
            candy.type
        end
        candy_types.include?(content)
    end

end