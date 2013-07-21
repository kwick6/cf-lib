#!/usr/bin/ruby

class Library 

   @count = 0

   def self.count
    @count
   end
  
   def self.count=(value)
    @count = value
   end

   def initialize(shelf)
  	@shelf = shelf
  	self.class.count += 1
  end

end

new1 = Library.new("Fiction")
new2 = Library.new("Marketing")
new4 = Library.new("Entrepreneur")

puts "The Library has a total of #{Library.count} shelves"

class Book < Library 

@count = 0

  def initialize(shelf, title, author)
       super(shelf)
	@title = title
	@author = author 
  end

  def enshelf
    puts "#{@title} | #{@shelf} shelf!"
  end

  def unshelf
    self.class.count -= 1
    puts "#{@title} has been checked out!, please try again"
  end

end
     

a = Book.new("Entrepreneur", "Zen And The Art of Motorcycle Maintenance", "Pirsig")
b = Book.new("Marketing", "Purple Cow", "Godin")
c = Book.new("Entrepreneur", "Crush It", "Vaynerchuk")
d = Book.new("Marketing", "Made to Stick", "Heath")
e = Book.new("Fiction", "It", "King")

a.enshelf
b.enshelf
c.unshelf
d.unshelf
e.enshelf

class Shelf < Library

  @count = 0
  
  
  def initialize(book, shelf)
     @book = book
     @shelf = shelf
     self.class.count += 1

  end
  
end

new1 = Shelf.new("It", "Fiction")
new2 = Shelf.new("Purple Cow", "Marketing")
new3 = Shelf.new("Crush It", "Entrepreneur")
new4 = Shelf.new("Zen And The Art of Motorcycle Maintenance", "Entrepreneur")
new5 = Shelf.new("Made to Stick", "Marketing")
puts "The Library has #{Shelf.count} books total, of which #{Book.count} are available on #{Library.count} shelves."

