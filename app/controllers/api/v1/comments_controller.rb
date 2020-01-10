class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def new
    @comment = @log.comments.build
  end

  def create
    @comment = @log.comments.build
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: {error: 'Oops! Missing information'}
    end
  end

  def show
    @comment = Comment.find(params['id'])
    render json: @comment
  end

  def delete
    @comment = Comment.find(params['id'])
    @log = Log.find(@review.logId)
    @comment.destroy
    render json: @log
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :logId)
  end
end
