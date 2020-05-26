class PostsController < ApplicationController
    
    before_action :current_post, only: [:show]
    
    def show

    end

    def current_post
        @post = Post.find(params[:id])
    end
end
