class MessageController < ApplicationController
  def sendmessage
    @message=Message.new
  end

  def messageprocess
    @message = Message.new(:message_content=>params[:message][:message_content], :subject=>params[:message][:subject])

    if @message.save
      redirect_to "message/success"
    else
      redirect_to "message/sendmessage"
    end
  end

  def success
  end
end
