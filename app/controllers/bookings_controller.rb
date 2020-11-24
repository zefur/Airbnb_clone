class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)

  end

  private 
  
  def set_default
    params.require(:booking).permit(:date,:skill_id,:user_id)
  end

end
