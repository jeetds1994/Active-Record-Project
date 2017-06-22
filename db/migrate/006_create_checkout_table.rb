class CreateCheckoutTable < ActiveRecord::Migration[4.2]

  def change
    create_table :checkouts do |t|
      t.integer :book_id
      t.integer :user_id
    end
  end
end
