class Table < ApplicationRecord
  has_many :lists, dependent: :destroy
  has_many :shares
  belongs_to :user

  validates :title, presence: true,
                    length: { minimum: 5,
                              maximum: 20 }
end
