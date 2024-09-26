# def kennedy_brothers
#     brothers = ["Robert", "Ted", "Joseph", "John"]
  
#     caps_brothers = []
  
#     brothers.each do |brother|
#       caps_brothers << brother.upcase
#     end
  
#     p caps_brothers
#   end

  def kennedy_brothers
    brothers = ["Robert", "Ted", "Joseph", "John"]
    caps_brothers=brothers.map do |brother|
        brother.upcase
    end
    caps_brothers
  end

  p kennedy_brothers


  def find_first_long_named_sister
    sisters = ["Rose", "Kathleen", "Eunice", "Patricia", "Jean"]
    sisters.each do |sister|

    end
    
  end


  ##enumerators
  names = ["Edgar", "Allan", "Poe", "Raven", "Molina", "Murr"]
  names.each_with_index do |name,index|
    puts name.length
    puts index
  end

  names = ["Edgar", "Allan", "Poe", "Raven", "Molina", "Murr"]
  names.each do |name|
    puts name.length
  end
