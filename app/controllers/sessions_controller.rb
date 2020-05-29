class SessionsController < ApplicationController

    skip_before_action :authenticated, only: [:new,:create]

    def new
    end

    def welcome
    end

    def home
        @most_hated = Post.most_hated_post
        @total_posts = Post.total_posts
        @latest_post = Post.latest_post
        @popular_category = Category.category_most_posts
    end
    
    def profile
    end

    def create
      # byebug
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            # flash[:errors] = "Your username and/or password are incorrect. Please try again."
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end
end
