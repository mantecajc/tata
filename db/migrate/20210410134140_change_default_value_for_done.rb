class ChangeDefaultValueForDone < ActiveRecord::Migration[6.1]
  def change
    change_column_default :checklist_tasks, :done, false
  end
end
