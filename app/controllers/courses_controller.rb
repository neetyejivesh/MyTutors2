class CoursesController < ApplicationController
  def index
    if params[:query].present?
      @courses = Course.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @courses = Course.all
    end
  end

  def search
    @course = Course.search(params[:search])
  end

  def new
    @course = Course.new
  end

  def show
    @booking = Booking.new
    @course = Course.find(params[:id])
    @bookings = @course.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date, to:   booking.end_date
      }
    
    end
  end

  def create
    @course = Course.new(course_params)
    @course.save
    redirect_to course_path(@course)
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    flash[:notice] = 'course information has been updated'
    redirect_to course_path
  end

  def destroy
    @course.destroy
    redirect_to courses_path
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :description, :photo_url, :duration)
  end
end
