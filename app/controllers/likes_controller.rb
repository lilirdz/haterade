class LikesController < ApplicationController
    
    before_action :current_post, only: [:create]

    def create
        @like = Like.create(user_id: session[:user_id], post_id: like_params[:post_id])
        redirect_to post_path(current_post)
    end

    def current_post
        @post = Post.find(params[:id]) 
    end

    private 

    def like_params 
        params.permit(:post_id)
    end 
end
