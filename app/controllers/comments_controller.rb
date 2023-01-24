class CommentsController < ApplicationController
    before_action :check_for_login
    def create
        @comment = params[:comment]["text"]
        redirect_to sanction_path
    end
end
