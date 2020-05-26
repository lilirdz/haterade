class CommentsController < ApplicationController
    
    before_action :current_comment, only: [:edit,:update]

    def new
        @comment = Comment.new
        @posts = Post.all
    end

    def create
        comment = Comment.new(comment_params)
        if comment.valid?
            comment.save
        #   redirect_to comment_path(comment)
          #redirect to the post
        else
          flash[:errors] = comment.errors.full_messages
        end
    end
    

    def edit
    end

    def update
        @comment.update(comment_params)
        #redirect to the post
    end
    

    def current_comment
        @comment = Comment.find(params[:id])
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id,:post_id,:content)
    end
    
    
end
