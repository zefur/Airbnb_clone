class BookingsController < ApplicationController
before_action :set_default
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @user_id = current_user.id
    if

  end

  private 
  
  def set_default
    params.require(:booking).permit(:date,:skill_id,:user_id)
  end

end
