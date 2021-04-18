class SampleNameChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column(:checklists, :completed_rate, :float)
  end
end
