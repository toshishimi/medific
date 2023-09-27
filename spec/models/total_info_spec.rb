require 'rails_helper'

RSpec.describe TotalInfo, type: :model do
  before do
    user = FactoryBot.create(:user)
    hospital = FactoryBot.create(:hospital)
    @total_info = FactoryBot.build(:total_info, hospital_name: hospital.hospital_name, user_id: user.id, image: hospital.image)
  end


  describe 'お薬登録' do
    context '新規登録できる場合' do
      it "すべての項目が存在すれば登録できる" do
        expect(@total_info).to be_valid
      end
      it "user_idが空でなければ保存できる" do
        @total_info.user_id = 1
        expect(@total_info).to be_valid
      end
      it "タイミングが空欄でも保存できる" do
        @total_info.timing = nil
        expect(@total_info).to be_valid
      end
      it "回数が空欄でも保存できる" do
        @total_info.individual = nil
        expect(@total_info).to be_valid
      end
      it "何日分が空欄でも保存できる" do
        @total_info.days_supply = nil
        expect(@total_info).to be_valid
      end
      it "備考が空欄でも保存できる" do
        @total_info.notes = nil
        expect(@total_info).to be_valid
      end
    end























  end
end
