class Run

  def initialize
    user = User.greeting
    Category.all
    User.get_category.books
    book = User.choose_book
    Checkout.new(user, book)

  end

end
