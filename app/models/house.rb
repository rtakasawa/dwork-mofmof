class House < ApplicationRecord
  has_many :supplementary_informations
  accepts_nested_attributes_for :supplementary_informations, allow_destroy: true
end
