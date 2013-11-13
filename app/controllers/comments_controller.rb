class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @submission = Submission.find(params[:submission_id])
    @comment = @submission.comments.new
  end

  def create
    @submission = Submission.find(params[:submission_id])
    @comment = @submission.comments.new(params[:comment].permit(:text).merge(user: current_user))
    if @comment.save
      redirect_to @submission
    else
      render 'new'
    end
  end
end
