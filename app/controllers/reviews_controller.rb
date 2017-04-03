class ReviewsController < ApplicationController

  def index
  end

  def new
    @review = Review.new
  end

  def create
    byebug
    @review = Review.new(review_params)
    # @review.trip_id = params[:trip_id]
    # if @review.save
    #
    # else
    #   redirect_to new_trip_review_path
    # end
  end

  def show
    @review = Review.find(params[:id])
    @reviews = @user.trips.all
  end

  private
      def review_params
        params.require(:review).permit(:trip_id, :description, :rating)
      end
  end
