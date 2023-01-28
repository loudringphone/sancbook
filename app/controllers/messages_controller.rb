class MessagesController < ApplicationController
    before_action :check_for_login

  def index
    send_messages = Message.where(sender_id: @current_user.id)
    receive_messages = Message.where(receiver_id: @current_user.id)
    receivers = send_messages.distinct.pluck(:receiver_id).sort!
    senders = receive_messages.distinct.pluck(:sender_id).sort!
    unique_user_ids = (receivers + senders).uniq
    @unique_usernames = []
    unique_user_ids.each do |user_id|
        @unique_usernames.push User.find_by(id: user_id).username
    end
        @unique_usernames.sort!
  end


  def message
    @user = User.find_by(id: params[:id])
    if @user.nil?
      @user = User.find_by(username: params[:id])
    end
    @unread_messages = Message.where("receiver_id = ? AND sender_id =? AND unread > ?", @current_user.id, @user.id, 0)
    # @unread_messages.each do |message|
    #     message.unread = 0
    #     message.save
    # end
    messages = Message.where(sender_id: @user.id, receiver_id: @current_user.id).or(Message.where(sender_id: @current_user.id, receiver_id: @user.id))
    @messages = messages.order(:id).reverse_order
    @read_messages_size = @messages.size - @unread_messages.size
  end

  def create
    message = Message.new
        message.text = params[:message]["text"]
        message.sender_id = @current_user.id
        location = request.headers["HTTP_REFERER"]
        receiver_id = location[location.index('users/')+'users/'.length..]
        receiver_id = receiver_id[..-('/messages'.length + 1)]
        if !User.find_by(id: receiver_id).present?
            receiver_id = User.find_by(username: receiver_id).id
        end
        message.receiver_id = receiver_id
        message.unread = message.unread + 1
        message.sent = Time.now.strftime("%d/%m/%Y %H:%M")
        message.save
        location = request.headers["HTTP_REFERER"]
        redirect_to location
  end


  


end
