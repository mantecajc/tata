class Table < ApplicationRecord
  has_many :lists

  validates :title, presence: true,
                    length: { minimum: 5,
                              maximum: 20 }
end
