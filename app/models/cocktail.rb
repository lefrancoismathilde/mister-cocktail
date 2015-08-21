class Cocktail < ActiveRecord::Base

 has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  validates :name, uniqueness: true, presence: true
  validates :picture, presence: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

end
