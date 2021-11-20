class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @token=generate_token(@booking)
  end

  def create
    @course = Course.find(params[:course_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.course = @course
    if @booking.save!
      flash[:notice] = 'Course has been successfully booked'
      redirect_to bookings_path
    else
      render 'courses/show'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path

    else
      flash[:error] = 'You fucked up ! , please try again'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @course = Course.find(@booking.course_id)
    if @booking.destroy
      flash[:success] = 'Booking has been cancelled'
    else
      flash[:error] = 'You fucked up ! , please try again'
    end
    redirect_to bookings_path
  end

  private

  def get_booking_date(params)
    "#{params["date(3i)"]}/#{params["date(2i)"]}/#{params["date(1i)"]}"
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :photo)
  end

  def generate_token(booking)
    
    token = Twilio::JWT::AccessToken.new ENV['ACCOUNT_SID'], ENV['KEY_ID'], ENV['AUTH_TOKEN'], [],
        ttl: 14400,
        identity: current_user.email
   
    grant = Twilio::JWT::AccessToken::VideoGrant.new
    grant.room = booking.url_room
    token.add_grant grant
    
    token.to_jwt
  end

end
