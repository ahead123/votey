class ArticlesController < ApplicationController

  def index
  	@articles = Article.order(upvotes: :desc).all
  end

  def update
  	@article = Article.find(params[:id])
    upvotes = @article.upvotes += 1
    @article.update_attributes(upvotes: upvotes)
    redirect_to root_path
  end

  def show
  	@article = Article.find(params[:id])
  end

end
