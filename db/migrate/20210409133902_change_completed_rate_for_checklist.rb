class ChangeCompletedRateForChecklist < ActiveRecord::Migration[6.1]
  def change
    change_column_default :checklists, :completed_rate, 0
  end
end
