class ApplicationController < ActionController::Base
    before_action :fetch_user

    private

    def your_api_key
        # return 'AIzaSyB78d32yWEekzTclS_gZO9CqWVCMNptHgY'    
        # return 'AIzaSyAwxpAsaXqY3uxRpLsZADAwzjvQFC7WK9Q' # No custom search
        # return 'AIzaSyCa51-DKIz0PUFsud5BV-3ZZvrPuFr28Gc'
        return 'AIzaSyBV1ZXF-FGbS8LNptoGgo6jsjRqDwIf0bU'
        # return ''
      end

    def fetch_user
        @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless @current_user.present? # Log out non-existent users.
    end

    def check_for_login
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
        redirect_to :root unless (@current_user.id === User.find_by(id: params[:id]).id || @current_user.admin?)
    end

    def check_for_comment_creator
        redirect_to :root unless (@current_user.id === Comment.find_by(id: params[:id]).user_id || @current_user.admin?)
    end
end

