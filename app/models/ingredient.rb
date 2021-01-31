class Ingredient < ApplicationRecord
  has_many :macro_nutrients
  has_many :micro_nutrients
end
