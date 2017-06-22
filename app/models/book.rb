class Book < ActiveRecord::Base

  belongs_to :category
  belongs_to :author
  has_many :checkout
  has_many :users, through: :checkout

end
