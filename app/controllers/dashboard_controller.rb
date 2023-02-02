class DashboardController < ApplicationController
    def unread
        unread = %w{ 0 1 2 3 4 }.sample
        render :plain => unread
    end

    # @current_user.unread_messages

end
