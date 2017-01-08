class CreateTagsLists < ActiveRecord::Migration
  def change
    create_table :tags_lists do |t|
      t.references :tag, index: true, foreign_key: true
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
