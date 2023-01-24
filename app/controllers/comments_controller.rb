class CommentsController < ApplicationController
    before_action :check_for_login
    def create
        @comment = params[:comment]["text"]
        location = request.headers["HTTP_REFERER"]
        redirect_to location
    end
end
