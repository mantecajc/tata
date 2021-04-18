class List < ApplicationRecord
  belongs_to :table
  has_many :tasks, dependent: :destroy
  has_many :checklists, dependent: :destroy

  validates :title, presence: true,
                    length: { minimum: 2,
                              maximum: 20 }
end
