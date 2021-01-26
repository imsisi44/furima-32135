class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :name, presence: true
  validates :introduction, presence: true
  validates :price, presence: true  
  validates :image, presence: true
  validates :category_id, presence: true
  validates :category_id, numericality: { other_than: 1 }
  validates :item_condition_id, presence: true
  validates :item_condition_id, numericality: { other_than: 1 }
  validates :shipping_payer_id, presence: true
  validates :shipping_payer_id, numericality: { other_than: 1 }
  validates :city_id, presence: true
  validates :city_id, numericality: { other_than: 0 }
  validates :shipping_day_id, presence: true
  validates :shipping_day_id, numericality: { other_than: 1 }

  belongs_to :user
  has_one_attached :image
  belongs_to :category
  belongs_to :item_condition
  belongs_to :shipping_payer
  belongs_to :city
  belongs_to :shipping_day
  has_one :order
  has_one :purchase
  has_one :sending_destination
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

end
