require 'rails_helper'
describe Message do
  before do
    @message = FactoryBot.build(:message)
  end

  describe 'メッセージ送信' do
    context 'メッセージ送信がうまくいくとき' do
      it "必要なカラムが存在すれば登録できる" do
        expect(@message).to be_valid
      end
    end

    context 'メッセージ送信がうまくいかないとき' do
      it "messageが空では送信できない" do
        @message.message = ""
        @message.valid?
        expect(@message.errors.full_messages).to include("Message can't be blank")
      end
      it "start_timeが空では登録できない" do
        @message.start_time = ""
        @message.valid?
      end
    end
  end
end