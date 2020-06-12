class Cocktail < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end
