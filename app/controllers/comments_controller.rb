class CommentsController < ApplicationController
    before_action :check_for_login
    def create
        @comment = params[:comment]["text"]
        raise 's'
        redirect_to '/sanctions/15'
    end
end
