class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.dog = Dog.find_by(id:booking_params['dog'])
    @booking.session = Session.find_by(id:booking_params['class'])
    @booking.user = current_user
    if @booking.save
      redirect_to upcoming_classes_path
    else
      redirect_to dashboard_schedule_path
    end
  end

  def destroy
    Booking.find(params[:id]).destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:dog, :class)
  end
end

