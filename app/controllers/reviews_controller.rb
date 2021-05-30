class ReviewsController < ApplicationController
  before_action :find_article, except: [:destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.article = @article
    if @review.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to article_path(@review.article)
  end

  private

  def find_article
    @article = Article.find(params[:article_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
