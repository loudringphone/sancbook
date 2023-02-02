class DashboardController < ApplicationController
    def unread
        unread = @current_user.unread_messages.size
        render :plain => unread
    end

end
