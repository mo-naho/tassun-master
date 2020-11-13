class RemoveTaskableIdFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :taskable_id, :integer
  end
end
