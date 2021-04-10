class ChecklistTask < ApplicationRecord
  belongs_to :checklist

  validates :title, presence: true,
                    length: { minimum: 5 }
end
