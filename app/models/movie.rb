class Movie < ApplicationRecord
  has_many  :bookmarks, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  validates :title, length: { minimum: 6 }
end
