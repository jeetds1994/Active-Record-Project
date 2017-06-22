class CreateBooksTable < ActiveRecord::Migration[4.2]

  def change
    create_table :books do |t|
      t.string :title
    end
  end
end
