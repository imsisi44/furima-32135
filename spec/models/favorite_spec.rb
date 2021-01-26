require 'rails_helper'

describe '#create' do

  it "正常の動作" do
    favorite = build(:favorite)
    expect(favorite).to be_valid
  end
end
