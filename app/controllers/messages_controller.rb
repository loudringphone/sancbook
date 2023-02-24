class MessagesController < ApplicationController
    before_action :check_for_login
    before_action :check_for_receiver, :only => [:message]

  def index
  
    receivers = @current_user.sent_messages.distinct.pluck(:receiver_id).sort!
    senders = @current_user.received_messages.distinct.pluck(:sender_id).sort!
    unique_user_ids = (receivers + senders).uniq
    unique_usernames = []
    unique_user_ids.each do |user_id|
        unique_usernames.push User.find_by(id: user_id).username
    end
    unique_usernames.sort!

    @unread_messages = @current_user.unread_messages.where(read: false)
    each_sender_unread_messages = []
    unique_usernames.each do |username|
    each_sender_unread_messages.push @unread_messages.where(sender_id: User.find_by(username: username).id).size
    end
    @unread_messages_hash = unique_usernames.zip(each_sender_unread_messages).to_h
    @sorted_unique_usernames = unique_usernames.sort_by { |k| @unread_messages_hash[k] }.reverse
    
    admin_record = User.where(admin: true)
    admins = []
    admin_record.each do |admin|
      admins.push admin.username
    end
    admins.sort!
    each_admin_unread_messages = []
    admins.each do |admin|
      each_admin_unread_messages.push @unread_messages.where(sender_id: User.find_by(username: admin).id).size
    end
    @admin_unread_messages_hash = admins.zip(each_admin_unread_messages).to_h
    @sorted_admins = admins.sort_by { |k| @admin_unread_messages_hash[k] }.reverse

  end


  def message
    @user = User.find_by(id: params[:id])
    if @user.nil?
      @user = User.find_by(username: params[:id])
    end
    @unread_messages = @current_user.unread_messages.where(sender_id: @user.id, read: false)
    @unread_messages.each do |message|
        message.read = true
        message.save
    end

    messages = @current_user.received_messages.where(sender_id: @user.id).or(@current_user.sent_messages.where(receiver_id: @user.id))
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
        message.sent = Time.now.strftime("%d/%m/%Y %H:%M")
        message.save
        location = request.headers["HTTP_REFERER"]
        redirect_to location
  end

  def destroy
    if @current_user.present?
        if (@current_user.admin? || Message.find_by(id: params[:id]).user_id == @current_user.id)
          Message.find_by(id: params[:id]).destroy
            location = request.headers["HTTP_REFERER"]
            redirect_to location
        end
    end    
  end

  def delete_all_messages
    if @current_user.present?
      if @current_user.admin?
        messages = Message.all
        messages.each do |message|
          message.destroy
        end
      end
    end
  end
  


end
