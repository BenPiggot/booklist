class CreateBooksLists < ActiveRecord::Migration
  def change
    create_table :books_lists do |t|
      t.references :book, index: true, foreign_key: true
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
