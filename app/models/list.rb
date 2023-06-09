class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, presence: true, allow_blank: false, allow_nil: false
  has_one_attached :photo
end
