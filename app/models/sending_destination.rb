class SendingDestination < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :city_id, presence: true
  validates :city_id, numericality: { other_than: 0 }
  validates :post_code, presence: true
  validates :municipality, presence: true
  validates :house_number, presence: true
  validates :phone_number, presence: true

  belongs_to :user, optional: true
  belongs_to :city
  belongs_to :item

end
