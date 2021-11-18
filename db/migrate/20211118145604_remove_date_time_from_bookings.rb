class RemoveDateTimeFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :start_date_time, :datetime
  end
end
