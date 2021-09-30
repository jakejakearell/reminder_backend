class Reminder < ApplicationRecord
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_presence_of :end_date, require: true
  validates_presence_of :start_date, require: true
  validates_presence_of :time, require: true
  validates_presence_of :message, require: true
  validates_presence_of :user_id, require: true
end
