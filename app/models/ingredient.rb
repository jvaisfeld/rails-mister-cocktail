class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true, allow_blank: false
  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses
  validates_associated :doses
end
