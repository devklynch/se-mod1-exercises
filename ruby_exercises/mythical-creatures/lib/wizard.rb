class Wizard
    attr_reader :name,
                :bearded,
                :rested

    def initialize(name, bearded={bearded: true})
        @name=name
        @bearded=bearded
        @rested=0
    end

  def bearded?
    # @bearded=={:bearded=>true}
    @bearded[:bearded]
   end

   def rested?
    @rested < 3
   end

   def cast
    @rested +=1
    "MAGIC MISSILE!"
   end

   def incantation (phrase)
    "sudo #{phrase}"
   end
end