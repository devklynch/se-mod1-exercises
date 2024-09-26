class SocialMediaUser
    @@users = []
  
    def initialize(id, rating)
      @id = id
      @rating = rating
      @posts = []
      @@users << self
    end
  
    def rating
      @rating
    end
  
    def add_post(post)
      @posts << post
    end
  
    def self.most_popular
        @@users.max_by { |user| user.rating }
    end
  
    def self.find(id)
        @@users.find { |user| user.instance_variable_get(:@id) == id }
    end
  end
  
