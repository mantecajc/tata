class List < ApplicationRecord
  belongs_to :table
  has_many :tasks
  has_many :checklists

  validates :title, presence: true,
                    length: { minimum: 5,
                              maximum: 20 }
end
