class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: { message: 'has been used, you fool!' }

  has_one_attached :cover
end
