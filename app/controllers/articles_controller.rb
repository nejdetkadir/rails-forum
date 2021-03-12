class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:edit, :update, :destroy, :show]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :topic_id)
  end
end
