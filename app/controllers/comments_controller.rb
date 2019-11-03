class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]
  before_action :set_article, only: [:create, :destroy]

  def create
    comment = @article.comments.create(author: current_user.username, body: comment_params[:body])
    redirect_to article_path(@article)
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy

    redirect_to article_path(@article)

  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end
end
