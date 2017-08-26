class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    redirect_to article_path(Article.create(article_params))
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to '/articles'
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

end
