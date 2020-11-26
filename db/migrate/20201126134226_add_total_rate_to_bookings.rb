class AddTotalRateToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :totalrate, :integer
  end
end
