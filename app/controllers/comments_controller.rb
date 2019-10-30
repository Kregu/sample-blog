class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]

  def create
    @article = Article.find(params[:article_id])
    comment = @article.comments.new(comment_params)
    comment.author = current_user.username
    if comment.save
      redirect_to article_path(@article)
    else
      redirect_to article_path(@article)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end

end
