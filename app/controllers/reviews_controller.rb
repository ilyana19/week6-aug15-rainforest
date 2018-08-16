class ReviewsController < ApplicationController
  def create
    # @product = Product.find(params[:product_id])
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    # redirects to the product page when it submitted
    if @review.save
      flash[:notice] = "New review added!"
      redirect_to "/products/#{params[:product_id]}"
    else
      flash[:notice] = "There was an error."
      redirect_to "/products/#{params[:product_id]}"
    end
  end

  def edit
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def update
  end

  def destroy
  end
end
