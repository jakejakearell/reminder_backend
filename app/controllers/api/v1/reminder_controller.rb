class Api::V1::ReminderController < ApplicationController
  def create
    require "pry"; binding.pry
    ["time", "start_date", "end_date", "message"]
  end
end
