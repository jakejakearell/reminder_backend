class Api::V1::ReminderController < ApplicationController
  def create
    reminder = Reminder.new(reminder_params)

    if reminder.save
      reminder
    else
      render json: {error: "#{reminder.errors.full_messages.first}", status: 404}, status: 404
    end
  end

  private

  def reminder_params
    params.require(:reminder).permit(:time, :email, :user_id, :end_date, :start_date, :message)
  end
end
