class BookingsController < ApplicationController
before_action :set_skill
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user_id = current_user.id
    @booking.skill = @skill
    if @booking.save
      redirect_to skill_path(@skill)
    else
      render "new"
    end
  end

  private 
  def set_skill
    @skill = Skill.find(params[:skill_id])
  end

  def bookings_params
    params.require(:booking).permit(:date)
  end

end
