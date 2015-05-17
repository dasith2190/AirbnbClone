class MessageController < ApplicationController

  def indmessage
    @mess_id=params[:id]
    if current_user.present? and @mess_id.present?
      @message=Message.find_by_sql("SELECT u.email as email, m.subject as subject, m.message_content as message_content, m.created_at as created_at FROM users u, messages m WHERE m.from_userid=u.id AND m.to_userid=#{current_user.id} AND m.id=#{@mess_id}")
    else
      redirect_to '/users/sign_in', alert: 'Please sign in'

    end
  end

  def inbox
    if current_user.present?
      @messages=Message.where(:to_userid=>current_user.id).order('created_at DESC')
      else
      redirect_to '/users/sign_in', alert: 'Please sign in'
    end
  end

  def sendmessage
    if current_user.present?
    @messages=Message.new
    @user_id=params[:id]
    @reply_id=params[:post_id]
    else
      redirect_to '/users/sign_in', alert: 'Please login first'
    end
  end

  def messageprocess

    if current_user.present?
    @message = Message.new(:to_userid=>params[:message][:to_userid], :from_userid=>current_user.id,:message_content=>params[:message][:message_content], :subject=>params[:message][:subject])

        if @message.save
          redirect_to "/message/success"
        else
          redirect_to :back, alert: 'Please login first'
        end
    else
      redirect_to "/users/sign_in", alert: 'Please login first'

    end
  end

  def success
  end
end
