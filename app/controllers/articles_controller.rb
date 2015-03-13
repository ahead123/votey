class ArticlesController < ApplicationController

  def index
  	@articles = Article.order(upvotes: :desc).all
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
  	respond_to do |format|
			if @article.save
				format.html { redirect_to root_path, notice: 'Article created yo!' }
			else
				errors.render
				redirect_to root_path
			end
		end
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

  private

  def article_params
  	params.require(:article).permit(:title, :url, :upvotes)
  end

end
