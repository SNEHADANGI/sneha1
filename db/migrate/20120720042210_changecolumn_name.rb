class ChangecolumnName < ActiveRecord::Migration
  def up
	rename_column :users, :name, :username
  end

  def down
  end
end
