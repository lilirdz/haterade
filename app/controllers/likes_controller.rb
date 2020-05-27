class LikesController < ApplicationController

    def create

        @like = Like.create(user_id: session[:user_id], post_id: like_params[:post_id])

        redirect_to post_path(@like.post)
    end


    private 

    def like_params 
        params.permit(:post_id)
    end 
end
