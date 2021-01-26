require 'rails_helper'

describe '#create' do

  it "正常の動作" do
    purchase = build(:purchase)
    expect(purchase).to be_valid
  end
end