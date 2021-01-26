require 'rails_helper'

describe Item do
  
  describe '#create' do
   
    it "正常の動作" do
      item = build(:item)
      expect(item).to be_valid
    end

    it "nameがない場合は登録できないこと" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    it "introductionがない場合は登録できないこと" do
      item = build(:item, introduction: nil)
      item.valid?
      expect(item.errors[:introduction]).to include("can't be blank")
    end

    it "category_idがない場合は登録できないこと" do
      item = build(:item, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end

    it "item_condition_idがない場合は登録できないこと" do
      item = build(:item, item_condition_id: nil)
      item.valid?
      expect(item.errors[:item_condition_id]).to include("can't be blank")
    end

    it "shipping_payer_idがない場合は登録できないこと" do
      item = build(:item, shipping_payer_id: nil)
      item.valid?
      expect(item.errors[:shipping_payer_id]).to include("can't be blank")
    end

    it "city_idがない場合は登録できないこと" do
      item = build(:item, city_id: nil)
      item.valid?
      expect(item.errors[:city_id]).to include("can't be blank")
    end

    it "shipping_day_idがない場合は登録できないこと" do
      item = build(:item, shipping_day_id: nil)
      item.valid?
      expect(item.errors[:shipping_day_id]).to include("can't be blank")
    end

    it "priceがない場合は登録できないこと" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end
  end  
end 