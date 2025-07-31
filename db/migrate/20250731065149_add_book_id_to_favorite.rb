class AddBookIdToFavorite < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :book_id, :integer
    add_reference :favorites, :book, null: false, foreign_key: true
  end
end
