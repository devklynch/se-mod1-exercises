class Narwhal
    attr_reader :name,
                :weight,
                :cute
    def initialize (narwhal)
        @name = narwhal[:name]
        @weight = narwhal[:weight]
        @cute = narwhal[:cute]
    end

    def cute?
        cute
    end
end