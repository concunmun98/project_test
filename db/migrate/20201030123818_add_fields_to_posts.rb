class AddFieldsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :book_id, :integer, foreign_key: true
  end
end
