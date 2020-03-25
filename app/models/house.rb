class House < ApplicationRecord
  has_many :supplementary_informations, dependent: :destroy
  accepts_nested_attributes_for :supplementary_informations, allow_destroy: true
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
end