require './book'
require './library'

library_1=Library.new("Alhambra,","CA")
book_1=Book.new("House of Leaves", "Zampano", "Horror")
book_2=Book.new("Count of Monte Cristo", "Dumas", "Classic")
book_3=Book.new("Harry Potter and the Sorcerer's Stone", "J.K. Rowling","Fantasy")

library_1.add_book(book_1)
library_1.add_book(book_2)

puts library_1.titles


require 'pry';binding.pry