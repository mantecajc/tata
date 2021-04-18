class Task < ApplicationRecord
  belongs_to :list

  validates :title, presence: true,
                    length: { minimum: 2 }
end
