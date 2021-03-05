class Book < ApplicationRecord
  belongs_to :category

  validates :title, :author, presence: true, length: { minimum: 3 }
end
