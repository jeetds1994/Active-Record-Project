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
    answer
  end

  def self.choose_book
    puts "Which book would you like?"
    answer = gets.chomp
    Book.find_or_create_by(title: answer)
  end
end
