class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: %i[new create edit destroy]
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
    @users = User.all
  end

  def new
    @article = Article.new
  end

  def show; end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id

    if @article.save
      redirect_to @article, success: 'Article create successfully'
    else
      render :new, danger: 'Article not created'
    end
  end

  def edit; end

  def update
    if @article.update(article_params)
      redirect_to @article, success: 'Article updated successfully'
    else
      render :edit, danger: 'Article not updated'
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
