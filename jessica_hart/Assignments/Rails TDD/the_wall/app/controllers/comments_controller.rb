class CommentsController < ApplicationController
  def create
    if session[:id] != nil
      @comment = Comment.new(content: params[:cmt_content], message_id: params[:msg_id], user_id: session[:id])
      unless @comment.save
        flash[:errors] = @comment.errors.full_messages
      end
    else
      flash[:errors] = ["You must be signed in to comment on a post."]
    end
    redirect_to messages_path
  end
end
