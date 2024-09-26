require 'CSV'
# file = File.readlines("../data/animal_lovers.csv")

# puts file

CSV.foreach('../data/animal_lovers.csv',headers: true,header_converters: :symbol ) do |row|
    require 'pry' ; binding.pry
end
