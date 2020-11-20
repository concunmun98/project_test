class CreateBooksales < ActiveRecord::Migration[6.0]
  def change
    create_table :booksales do |t|
      t.string :name
      t.integer :category

      t.timestamps
    end
  end
end
