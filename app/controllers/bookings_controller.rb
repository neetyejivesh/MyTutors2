class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @course = Course.find(params[:course_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.course = @course
    if @booking.save
      flash[:notice] = 'Course has been successfully booked'
      redirect_to bookings_path
    else
      render 'course/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @course = Course.find(@booking.course_id)
    if Booking.delete(params[:id]).positive?
      flash[:success] = 'Booking has been cancelled'
    else
      flash[:error] = 'You fucked up ! , please try again'
    end
    redirect_to booking_path(@booking)
  end

  private

  def get_booking_date(params)
    "#{params["date(3i)"]}/#{params["date(2i)"]}/#{params["date(1i)"]}"
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
