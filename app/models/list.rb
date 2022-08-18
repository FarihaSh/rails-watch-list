class List < ApplicationRecord
  has_many :movies, through: :bookmarks
  has_many :bookmarks, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
