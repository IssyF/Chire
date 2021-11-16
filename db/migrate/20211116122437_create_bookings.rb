class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.references :user, null: false, foreign_key: true
      t.references :chef, null: false, foreign_key: true
      t.boolean :confirmed

      t.timestamps
    end
  end
end
