class ChangeUserNameOptionsToUsers < ActiveRecord::Migration[5.1]
  def up
    change_column :users, :user_name, :string, null: false, default: ""
  end
 
  def down
    change_column :users, :user_name, :string, null: true, default: nil
  end
end