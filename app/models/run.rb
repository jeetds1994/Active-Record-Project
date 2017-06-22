
class Run

  def initialize
    user = User.greeting
    p Category.all.map {|category| category.name}
    category = User.get_category
    p category.books.map {|book| book.title}
    book = User.choose_book
    new_checkout = Checkout.new
    user.checkout << new_checkout
    book.checkout << new_checkout
    user.return_book?
  end

end
