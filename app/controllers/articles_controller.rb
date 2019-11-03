class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit]
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  
  def index
    @articles = Article.all
    @users = User.all
  end

  def new
    @article = Article.new
  end

  def show
    @users = User.all
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id

    if @article.save
      redirect_to @article, success: 'Article create successfully'
    else
      render :new, danger: 'Article not created'
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article, success: 'Article updated successfully'
    else
      render :edit, danger: 'Article not udated'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, success: 'Article delete successfully'
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

  def set_article
     @article = Article.find(params[:id])
  end

end
