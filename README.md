# テーブル設計

## users テーブル

| Column          | Type   | Option      |
| --------------- | ------ | ----------- |
| nickname        | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| last_name       | string | null: false |
| first_name      | string | null: false |
| last_name_kana  | string | null: false |
| first_name_kana | string | null: false |
| birthday        | date   | null: false |

### Association

  - has_many :items
  - has_many :sending_destinations
  - has_many :purchases
  - has_many :orders
  - has_many :comments
  - has_many :favorites

## items テーブル

| Column            | Type       | Option      |
| ----------------- | ---------- | ----------- |
| image             | null       | null        |
| name              | string     | null: false |
| introduction      | text       | null: false |
| category_id       | integer    | null: false |
| item_condition_id | integer    | null: false |
| shipping_payer_id | integer    | null: false |
| city_id           | integer    | null: false |
| shipping_day_id   | integer    | null: false |
| price             | integer    | null: false |
| user              | references | null: false |

### Association

  - belongs_to :user
  - has_one_attached :image
  - belongs_to :category
  - belongs_to :item_condition
  - belongs_to :shipping_payer
  - belongs_to :city
  - belongs_to :shipping_day
  - has_one :order
  - has_one :purchase
  - has_one :sending_destination
  - has_many :comments
  - has_many :favorites

## categories テーブル

| Column | Type   | Option      |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :items

## item_conditions テーブル

| Column | Type   | Option     |
| ------ | ------ | ---------- |
| name   | string | null: false|

### Association

- has_many :items

## shipping_payers テーブル

| Column | Type   | Option      |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :items

## cities テーブル

| Column | Type   | Option      |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :items
- has_many :sending_destinations
- has_many :orders

## shipping_days テーブル

| Column | Type   | Option      |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :items

## comments テーブル

| Column | Type       | Option      |
| ------ | ---------- | ----------- |
| text   | text       | null: false |
| user   | references | null: false |
| item   | references | null: false |

### Association

- belongs_to :users
- belongs_to :items

## favorites テーブル

| Column | Type       | Option      |
| ------ | ---------- | ----------- |
| user   | references | null: false |
| item   | references | null: false |

### Association

- belongs_to :users
- belongs_to :items

## orders テーブル

| Column          | Type       | Option      |
| --------------- | ---------- | ----------- |
| post_code       | integer    | null: false |
| city            | integer    | null: false |
| municipality    | string     | null: false |
| house_number    | string     | null: false |
| building_number | string     | null: false |
| phone_number    | integer    | null: false |
| user            | references | null: false |
| item            | references | null: false |

### Association

- belongs_to :user
- belongs_to :item
- belongs_to :city

## sending_destinations テーブル

| Column          | Type       | Option      |
| --------------- | ---------- | ----------- |
| post_code       | integer    | null: false |
| city            | integer    | null: false |
| municipality    | string     | null: false |
| house_number    | string     | null: false |
| building_number | string     | null: false |
| phone_number    | integer    | null: false |
| user            | references | null: false |
| item            | references | null: false |

### Association

- belongs_to :user
- belongs_to :item
- belongs_to :city

## purchases テーブル

| Column          | Type       | Option      |
| --------------- | ---------- | ----------- |
| user            | references | null: false |
| item            | references | null: false |

### Association

- belongs_to :user
- belongs_to :item