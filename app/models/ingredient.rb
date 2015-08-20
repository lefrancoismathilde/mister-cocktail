class Ingredient < ActiveRecord::Base
  validates :name, uniqueness:true, presence: true
  has_many :doses
end
