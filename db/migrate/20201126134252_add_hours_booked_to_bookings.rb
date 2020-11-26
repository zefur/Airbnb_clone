class AddHoursBookedToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :hoursbooked, :integer
  end
end
