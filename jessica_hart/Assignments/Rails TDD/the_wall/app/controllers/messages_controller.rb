class MessagesController < ApplicationController
  def index
    @messages = Message.all.includes(:user, :comments)
    @user = session[:name]
  end

  def create
    if session[:id] != nil
      @message = Message.new(content: params[:content], user_id: session[:id])
      unless @message.save
        flash[:errors] = @message.errors.full_messages
      end
    else
      flash[:errors] = ["You must be signed in to post a message."]
    end
    redirect_to messages_path
  end
end
