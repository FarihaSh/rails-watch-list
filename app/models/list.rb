class List < ApplicationRecord
  has_many :movies, through: :bookmark
  has_many :bookmarks, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :name, uniqueness: true, on: :create
  validates :photo, presence: true, allow_blank: false
end
