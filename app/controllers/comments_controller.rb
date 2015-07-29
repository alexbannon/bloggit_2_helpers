class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @users = User.all
    @posts = Post.all
  end
  def create
    @comment = Comment.create!(comment_params)
    redirect_to post_path(@comment.post_id)
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post_id)
  end



  private
  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :comment_content)
  end
end
