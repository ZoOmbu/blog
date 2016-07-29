class SubcommentsController < ApplicationController
  def create
    @post = Post.find(params[:comment_id])
    @comment = @post.comments.find(params[:comment_id])
    @subcomment = @comment.subcomments.create(params[:subcomment], permit(:name, :body))

    redirect_to post_path(@post)
  end
end
