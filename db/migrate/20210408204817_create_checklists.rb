class CreateChecklists < ActiveRecord::Migration[6.1]
  def change
    create_table :checklists do |t|
      t.integer :completed_rate
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
