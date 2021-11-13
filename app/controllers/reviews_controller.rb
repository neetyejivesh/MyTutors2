class ReviewsController < ApplicationController

    def index
        @reviews = current_user.reviews
      end

      def new
        @review = Review.new
        @course = Course.find(params[:course_id])
      end
    
      def create
        @review = Review.new(review_params)
        @review.user = current_user
        if @review.save
          redirect_to new_review_path
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
        params.require(:review).permit(:content, :rating)
      end
    
end
