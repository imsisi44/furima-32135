class Order < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  include ActiveModel::Model
  attr_accessor :post_code, :city_id, :municipality, :house_number, :building_number, :phone_number, :user_id, :item_id, :token

  validates :city_id, presence: true
  validates :city_id, numericality: { other_than: 0 }
  validates :post_code, presence: true
  validates :municipality, presence: true
  validates :house_number, presence: true
  validates :phone_number, presence: true

  validates :token, presence: true

  belongs_to :user, optional: true
  belongs_to :item
  belongs_to :city

  def save
    SendingDestination.create(post_code: post_code, city_id: city_id, municipality: municipality, house_number: house_number, building_number: building_number, phone_number: phone_number, user_id: user_id, item_id: item_id)
    Purchase.create(user_id: user_id, item_id: item_id)
  end
end
