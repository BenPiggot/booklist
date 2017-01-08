class CreateBooksTags < ActiveRecord::Migration
  def change
    create_table :books_tags do |t|
      t.references :book, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
