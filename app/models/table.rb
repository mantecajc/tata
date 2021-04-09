class Table < ApplicationRecord
  has_many :lists

  validates :title, presence: true
end
