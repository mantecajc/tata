class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :list, null: false, foreign_key: true
      t.boolean :done
      t.date :start_at
      t.date :end_at

      t.timestamps
    end
  end
end
