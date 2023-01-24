class CommentsController < ApplicationController
    before_action :check_for_login
    def create
        comment = Comment.new
        comment.text = params[:comment]["text"]
        comment.user_id = @current_user.id

        location = request.headers["HTTP_REFERER"]
        sanction_id = location[location.index('sanctions/')+10..].to_i
        comment.sanction_id = sanction_id
        comment.sent = Time.now.strftime("%d/%m/%Y %H:%M")
        comment.save
        location = request.headers["HTTP_REFERER"]
        redirect_to location
    end

    def destroy
        if @current_user.present?
            if @current_user.admin?
                Comment.find_by(id: params[:id]).destroy
                location = request.headers["HTTP_REFERER"]
                redirect_to location
            end
        end
        
    end
end
