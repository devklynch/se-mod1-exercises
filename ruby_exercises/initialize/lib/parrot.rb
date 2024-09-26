class Parrot
    attr_reader :name,
                :known_words

   def initialize(parrot)
     @name = parrot[:name]
     @known_words = parrot[:known_words]
   end

   def sound
    "Squawk!"
   end
end