class Wizard

  attr_reader :name
  attr_accessor :bearded

  # def initialize(name, bearded = {bearded: true})
  #   @name = name
  #   @bearded=bearded
  
  # end

  def initialize(name, bearded={bearded: true})
    @name=name
    @bearded=bearded
  end

  def bearded?
   # @bearded=={:bearded=>true}
   @bearded[:bearded]
  end

  def incantation(x)
    "sudo #{x}"
  end

end
