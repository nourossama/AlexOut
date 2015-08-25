class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_restaurant
  before_action :authenticate_user! 
  
 # respond_to :html


  def new
    @review = current_user.reviews.build
  # @review = Review.new
  # @review.user_id = current_user.id
  end

  def edit
  end

  def create
   # @review = current_user.reviews.build(review_params)
     # respond_to do |format|
      #if @review.save
      #  format.html { redirect_to @review, notice: 'Review was successfully created.' }
     #   format.json { render :show, status: :created, location: @review }
     # else
       
       # format.html { render :new }
       # format.json { render json: @review.errors, status: :unprocessable_entity }
     # end
    #end
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.restaurant_id = @restaurant.id

   if @review.save
    redirect_to @restaurant
   else
     render 'new'
     end
  end

  def update
    @review.update(review_params)
    
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

      def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end
