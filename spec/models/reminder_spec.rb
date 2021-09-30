require 'rails_helper'

RSpec.describe Reminder, type: :model do
  describe "validations" do
    it {should validate_presence_of(:end_date)}
    it {should validate_presence_of(:start_date)}
    it {should validate_presence_of(:time)}
    it {should validate_presence_of(:message)}
    it {should validate_presence_of(:user_id)}
    it {should validate_presence_of(:email)}
  end
end
