class PostsController < ApplicationController
    
    before_action :current_post, only: [:show,:edit,:update,:destroy]
    
    def index
      @posts = Post.all
    end
    
    def show
        @comment = @post.comments.new
        # @like = Like.new
    end

    def new
        @post = Post.new
        @categories = Category.all
        # @comment = Comment.new(post_id: params[:post_id])
    end

    def create
        post = Post.new(post_params)
        if post.valid?
          post.save
          redirect_to post_path(post)
        else
          flash[:errors] = post.errors.full_messages
          redirect_to new_post_path
        end
    end

    def edit
        @categories = Category.all
    end
    
    def update
        @post.update(post_params)
        redirect_to post_path(@post)
    end

    def destroy
        @post.destroy
        redirect_to posts_path
    end

    def current_post
        @post = Post.friendly.find(params[:id])
    end

    # def like
    #     @post.add_like
    #     @post.save
    #     redirect_to post_path(@post)
    # end

    private

    def post_params
        params.require(:post).permit(:title,:content,:user_id,:category_id)
    end
end
