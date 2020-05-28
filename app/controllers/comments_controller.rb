class CommentsController < ApplicationController
    
    before_action :current_comment, only: [:edit,:update,:show]

    def new
        @comment = Comment.new
    end
    
    def show
    end
    
    def create
        comment = Comment.new(comment_params)
        if comment.valid?
            comment.save
            redirect_to post_path(comment.post)
        else
          flash.now[:errors] = comment.errors.full_messages
        #   flash.now[:errors] = "Comment is too short. Try again."
          redirect_to post_path(comment.post)
        end
    end
    

    def edit
    end

    def update
        @comment.update(comment_params)
        redirect_to post_path(@comment.post)
    end
    

    def current_comment
        @comment = Comment.find(params[:id])
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id,:post_id,:content)
    end
    
    
end
