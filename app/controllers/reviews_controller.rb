class ReviewsController < ApplicationController

  def index
    @reviews = Review.where(restaurant_id: @restaurant.id)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])

    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    if @review.update(review_params)
      redirect_to restaurant_path(@review)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path
  end

  private

  def review_params
    params.require(:review).permit(:restaurant_id, :content, :rating)
  end

end
