class CommentsController < ApplicationController
    
    before_action :current_comment, only: [:edit,:update,:show]

    def new
        @comment = Comment.new
        # @posts = Post.all
        # @users = User.all
    end
    
    def show
    end
    
    def create
      # byebug
        comment = Comment.new(comment_params)
        # byebug
        # if comment.valid?
            comment.save
            redirect_to post_path(comment.post)
          #redirect to the post
        # else
        #   flash[:errors] = comment.errors.full_messages
        # end
    end
    

    def edit
    end

    def update
        @comment.update(comment_params)
        redirect_to post_path(@comment.post)
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
