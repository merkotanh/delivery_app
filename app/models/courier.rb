class Courier < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  has_many :packages, dependent: :destroy
end
