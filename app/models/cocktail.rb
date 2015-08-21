class Cocktail < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  validates :picture, presence: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
