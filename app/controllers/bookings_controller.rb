class BookingsController < ApplicationController
before_action :set_default
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @user_id = current_user.id
    if @booking.save?
      puts "its done"
    else
      puts "something went wrong"
    end

  end

  private 
  
  def set_default
    @booking = Booking.find(params[:skill_id])
  end

  def booking_params
    params.require(:booking).permit(:date,:skill_id,:user_id)
  end
end
