class CreateChecklistTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :checklist_tasks do |t|
      t.string :title
      t.boolean :done
      t.references :checklist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
