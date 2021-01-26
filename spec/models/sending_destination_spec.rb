require 'rails_helper'

describe '#create' do
   
  it "正常の動作" do
    sending_destination = build(:sending_destination)
    expect(sending_destination).to be_valid
  end

  it "post_codeがない場合は登録できないこと" do
    sending_destination = build(:sending_destination, post_code: nil)
    sending_destination.valid?
    expect(sending_destination.errors[:post_code]).to include("can't be blank")
  end

  it "city_idがない場合は登録できないこと" do
    sending_destination = build(:sending_destination, city_id: nil)
    sending_destination.valid?
    expect(sending_destination.errors[:city_id]).to include("can't be blank")
  end

  it "municipalityがない場合は登録できないこと" do
    sending_destination = build(:sending_destination, municipality: nil)
    sending_destination.valid?
    expect(sending_destination.errors[:municipality]).to include("can't be blank")
  end

  it "house_numberがない場合は登録できないこと" do
    sending_destination = build(:sending_destination, house_number: nil)
    sending_destination.valid?
    expect(sending_destination.errors[:house_number]).to include("can't be blank")
  end

  it "building_numberがなくても登録できること" do
    sending_destination = build(:sending_destination, building_number: nil)
    expect(sending_destination).to be_valid
  end

  it "phone_numberがない場合は登録できないこと" do
    sending_destination = build(:sending_destination, phone_number: nil)
    sending_destination.valid?
    expect(sending_destination.errors[:phone_number]).to include("can't be blank")
  end
end 
