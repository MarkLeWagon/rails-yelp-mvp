class Restaurant < ApplicationRecord

  # must have address, name and phone number filled in
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  # allows only if the categories belong to those in inclusion only
  validates :category, inclusion: {in: ["chinese","italian","japanese", "french", "belgian"]}
  # tells there is a one to many relationship in db with reviews & when you destroy restaurant you destroy connecting reviews (should include schema column reference from review to restaurant (1 to many))
  has_many :reviews, dependent: :destroy
end
