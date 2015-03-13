class ArticlesController < ApplicationController

  def index
  	@articles = Article.order(upvotes: :desc).all
  end

  def update

  end

end
