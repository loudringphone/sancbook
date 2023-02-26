class DashboardController < ApplicationController
    def unread
        unread = @current_user.unread_messages.size
        render :plain => unread
    end

    def messages
        user = User.find_by(id: params[:id])
        if user.nil?
        user = User.find_by(username: params[:id])
        end
        messages = @current_user.received_messages.where(sender_id: user.id).or(@current_user.sent_messages.where(receiver_id: user.id))
        messages = messages.order(:id).reverse_order
        render :json => messages
    end

end
