class Checklist < ApplicationRecord
  belongs_to :list
  has_many :checklist_tasks

  validates :completed_rate,
            numericality: { only_integer: true,
                            less_than_or_equal_to: 100,
                            greater_than_or_equal_to: 0 }
end
