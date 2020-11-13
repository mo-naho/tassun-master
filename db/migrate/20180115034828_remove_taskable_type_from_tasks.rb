class RemoveTaskableTypeFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :taskable_type, :string
  end
end
