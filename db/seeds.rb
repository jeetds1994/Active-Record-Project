User.delete_all
Author.delete_all
Category.delete_all
Book.delete_all


david = User.create(:name=> "David")
sarah = User.create(:name=> "Sarah")

jkrowling = Author.create(:name=> "J.K. Rowling")
jrrtolkien = Author.create(:name=> "J.R.R. Tolkien")
homer = Author.create(:name=> "Homer")


fantasy = Category.create(:name=> "fantasy")
epic = Category.create(:name=> "epic")

harry_potter = Book.create(:title=> "Harry Potter")
the_hobbit = Book.create(:title=> "The Hobbit")
the_odyssey = Book.create(:title=> "The Odyssey")

fantasy.books << harry_potter
fantasy.books << the_hobbit
epic.books << the_odyssey

jkrowling.books << harry_potter
jrrtolkien.books << the_hobbit
homer.books << the_odyssey
