class Book < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, :author, presence: true, length: { minimum: 3 }
end
