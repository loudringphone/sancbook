class ApplicationController < ActionController::Base
    before_action :fetch_user
    before_action :check_for_unread

    private

    def your_api_key
        # return 'AIzaSyB78d32yWEekzTclS_gZO9CqWVCMNptHgY'    
        # return 'AIzaSyAwxpAsaXqY3uxRpLsZADAwzjvQFC7WK9Q' # No custom search
        # return 'AIzaSyCa51-DKIz0PUFsud5BV-3ZZvrPuFr28Gc'
        # return 'AIzaSyBV1ZXF-FGbS8LNptoGgo6jsjRqDwIf0bU'
        return ''
      end

    def fetch_user
        @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless @current_user.present? # Log out non-existent users.
    end

    def check_for_login
        flash[:error] = "Please login to continue"
        redirect_to login_path unless @current_user.present?
    end

    def check_for_session
        redirect_back fallback_location: root_path if @current_user.present?
    end

    def check_for_admin
        redirect_to :root unless (@current_user.present? && @current_user.admin?)
    end

    def check_for_sanction_creator
        redirect_to :root unless (@current_user.id === Sanction.find_by(id: params[:id]).user_id || @current_user.admin?)
    end

    def check_for_profile_owner
        if params[:id].to_i > 0
            redirect_to :root unless (@current_user.id === User.find_by(id: params[:id]).id || @current_user.admin?)
        else
            redirect_to :root unless (@current_user.username === User.find_by(username: params[:id]).username || @current_user.admin?)
        end
    end

    def check_for_comment_creator
        redirect_to :root unless (@current_user.id === Comment.find_by(id: params[:id]).user_id || @current_user.admin?)
    end

    def last_controller
        url = Rails.application.routes.recognize_path(request.referrer)
        last_controller = url[:controller]
    end

    def check_for_unread
        if @current_user.present?
            # @total_unread_messages = @current_user.unread_messages.length
            received_messages = Message.all.where(receiver_id: @current_user.id)
            @total_unread_messages = @unread_messages = received_messages.where(read: false)
        end
    end

    def check_for_receiver
        if @current_user.present?
            unless @current_user.admin?
                if (@current_user.id === params[:id] || @current_user.id == User.find_by(username: params[:id]).id)
                    redirect_to :messages_path
                end
            end
        end
    end





end

    
