class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
