class Addcolumntousers < ActiveRecord::Migration
  def up
 	add_column :users, :f_name,:string
	add_column :users, :l_name,:string
	add_column :users, :full_name,:string
	add_column :users, :user_type,:integer, :default => 1
	add_column :users, :contact_no,:integer
  end

  def down
  end
end
