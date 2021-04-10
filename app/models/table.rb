class Table < ApplicationRecord
  has_many :lists, dependent: :destroy

  validates :title, presence: true,
                    length: { minimum: 5,
                              maximum: 20 }
end
