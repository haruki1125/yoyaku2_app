require 'rails_helper'
describe Event do
  before do
    @event = FactoryBot.build(:event)
  end

  describe '予約の送信' do
    context '送信がうまくいくとき' do
      it "必要なカラムが存在すれば登録できる" do
        expect(@event).to be_valid
      end
    end

    context '送信がうまくいかないとき' do
      it "nameが空では送信できない" do
        @event.name = ""
        @event.valid?
        expect(@event.errors.full_messages).to include("Name can't be blank")
      end
      it "contentが空では送信できない" do
        @event.content = ""
        @event.valid?
        expect(@event.errors.full_messages).to include("Content can't be blank")
      end
      it "phone_numberが空では送信できない" do
        @event.phone_number = ""
        @event.valid?
        expect(@event.errors.full_messages).to include("Phone number can't be blank")
      end
      it "memberが空では送信できない" do
        @event.member = ""
        @event.valid?
        expect(@event.errors.full_messages).to include("Member can't be blank")
      end
    end
  end
end