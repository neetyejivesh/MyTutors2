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

end
