class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def display_by_id
    @article = Article.find(params[:id]) # when do we input the id?
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article.id)
    #
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article.id)
  end

  def delete
    @article = Article.find(params[:id])
    @article.delete
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
