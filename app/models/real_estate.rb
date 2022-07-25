class RealEstate < ApplicationRecord
  belongs_to :user
  validates :address, uniqueness: true, presence: true
  validates :owner, :sqmt, :price, presence: true
  has_one_attached :picture
  validates :picture, attached: true, content_type: [:png, :jpg, :jpeg]
end
