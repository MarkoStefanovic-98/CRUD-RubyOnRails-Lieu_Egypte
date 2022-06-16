class Lieu < ApplicationRecord
  validates :NomLieu, presence: true
  validates :description, presence: true
  validates :situation, presence: true
end
