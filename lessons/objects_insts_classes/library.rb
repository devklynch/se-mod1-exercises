class Library
    attr_reader :city,
                :state,
                :collection,
                :author,
                :title,
                :genre
    def initialize(city,state)
        @city=city
        @state=state
        @collection=[]
    end

    def add_book(book)
        @collection << book

    end


end