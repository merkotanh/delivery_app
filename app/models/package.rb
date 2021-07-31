class Package < ApplicationRecord
  validates :tracking_number, presence: true
  validates :tracking_number, uniqueness: true

  belongs_to :courier

  def delivery_status?
    delivery_status
  end
end
