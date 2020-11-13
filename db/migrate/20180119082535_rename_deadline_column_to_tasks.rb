class RenameDeadlineColumnToTasks < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :deadline, :start_time
  end
end
