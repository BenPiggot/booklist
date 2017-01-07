class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.string :isbn
      t.string :category

      t.timestamps null: false
    end
  end
end