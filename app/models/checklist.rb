class Checklist < ApplicationRecord
  belongs_to :list
  has_many :checklist_tasks, dependent: :destroy

# validates :completed_rate
#            numericality: { less_than_or_equal_to: 1,
#            greater_than_or_equal_to: 0 }
end
