class User < ActiveRecord::Base

  has_many :checkout
  has_many :books, through: :checkout

  def self.greeting
    puts "Welomce to the DJ Library!"
    puts "What is your name?"
    answer = gets.chomp
    self.find_or_create_by(name: answer)
  end

  def self.get_category
    puts "Which category would you like to see?"
    answer = gets.chomp
    Category.find_or_create_by(name: answer)
  end

  def self.choose_book
    puts "Which book would you like?"
    answer = gets.chomp
    Book.find_or_create_by(title: answer)
  end

  def return_book?
    puts "Are you returning a book?"
    answer = gets.chomp
    if /[yY]/.match(answer)
      puts self.books.map {|book| book.title}
      puts "What book would you like to return?"
      answer = gets.chomp
      self.checkout.select do |item| item.book.title == answer ? item.destroy : nil  end
    end
  end
end
