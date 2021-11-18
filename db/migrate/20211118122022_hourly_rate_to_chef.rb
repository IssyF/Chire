class HourlyRateToChef < ActiveRecord::Migration[6.0]
  def change
    add_column :chefs, :hourly_rate, :float
  end
end
