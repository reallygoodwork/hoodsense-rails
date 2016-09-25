class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def create
    @unit = Unit.find(params[:unit_id])
    @review = @unit.reviews.build review_params
    @review.user = current_user
    @review.save
    redirect_to unit_path(@unit), notice: 'Comment was successfully posted'
  end

  private

    def review_params
      params.require(:review).permit(:title, :review, :movedin, :movedout, :gas_included, :gas_price, :hydro_included, :hydro_price, :water_included, :water_price, :pet_friendly, :outdoor_space, :laundry, :laundry_cost, :leaks, :mice, :concierge)
    end
end
