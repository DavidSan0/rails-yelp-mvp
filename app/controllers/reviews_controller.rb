class ReviewsController < ApplicationController
    #READ all -----------------------------
    def index
        @review = Review.all
    end

    #READ one -----------------------------
    def show
        @review = Review.find(params[:id])
    end

    #CREATE -----------------------------
    def new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review.restaurant = @restaurant
        if  @review.save
            redirect_to restaurant_path(@restaurant)
        else
            render :new
        end
    end

    private

    def review_params
        params.require(:review).permit(:content, :rating)
    end
end
