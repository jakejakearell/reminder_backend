class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.time :time
      t.date :start_date
      t.date :end_date
      t.text :message
      t.integer :user_id
      t.string :email

      t.timestamps
    end
  end
end
