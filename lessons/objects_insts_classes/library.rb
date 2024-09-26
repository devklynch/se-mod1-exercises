class Library
    attr_reader :city,
                :state,
                :collection
      

    def initialize(city,state)
        @city=city
        @state=state
        @collection = []
    
    end

    def add_book(book)
        @collection << book
    end

    def titles
        titles = []
        collection.each_with_index do |book, index|
            titles << collection[0].title
        end
    end
    



end