class CommentsController < ApplicationController
    before_action :check_for_login
    def create
        comment = Comment.new
        comment.text = params[:comment]["text"]
        comment.user_id = @current_user.id
        comment.sanction_id = params[:id]
        comment.sent = Time.now.strftime("%d/%m/%Y %H:%M")
        raise 's'
        comment.save

        @comment
        location = request.headers["HTTP_REFERER"]
        redirect_to location
    end

end
