class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :main
      t.date :deadline
      t.integer :taskable_id
      t.string :taskable_type

      t.timestamps
    end
  end
end
