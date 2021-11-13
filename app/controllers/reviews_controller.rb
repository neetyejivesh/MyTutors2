class ReviewsController < ApplicationController

    def index
        @reviews = current_user.reviews
      end

      def new
        @new_review = Review.new
        @course = Course.find(params[:course_id])
      end
    
      def create
        @new_review = Review.new(review_params)
        @new_review.user = current_user
        @course = Course.find(params[:course_id])
        @new_review.course = @course #thibo 
      
        if @new_review.save
          redirect_to course_path(@course)
        else
          flash[:alert] = "Something went wrong."
          render :new
        end
      end
    
      def destroy
        @review = Review.find(params[:id])
        @review = Course.find(@review.course_id)
        if Review.delete(params[:id]).positive?
          flash[:success] = 'Review has been deleted'
        else
          flash[:error] = 'please try again'
        end
        redirect_to review_path(@review)
      end
      private

      def review_params
        params.require(:review).permit(:comment, :rating, :course_id)
      end
    
end
