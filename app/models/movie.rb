class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true, allow_nil: false, allow_blank: false
  validates :overview, presence: true, allow_nil: false, allow_blank: false
end
