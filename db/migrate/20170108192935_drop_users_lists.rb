class DropUsersLists < ActiveRecord::Migration
 def up
    drop_table :users_lists
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
