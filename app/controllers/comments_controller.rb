class CommentsController < ApplicationController
    before_action :check_for_login
    before_action :check_for_comment_creator, :only => [:destroy]
    before_action :check_for_profile_owner, :only => [:index]
    
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
            if (@current_user.admin? || Comment.find_by(id: params[:id]).user_id == @current_user.id)
                Comment.find_by(id: params[:id]).destroy
                location = request.headers["HTTP_REFERER"]
                redirect_to location
            end
        end    
    end


    def remove_all_comments
        Comment.where(user_id: params[:id]).destroy_all
    end



    def index
        if @current_user.present?
            if @current_user.admin? || @current_user.id == params[:id].to_i
                @comments = Comment.where(user_id: params[:id])
            end
        end
       
    end

end
