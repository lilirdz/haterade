class UsersController < ApplicationController
  skip_before_action :authenticated, only: [:new, :create]
  before_action :chosen_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def create
    byebug
    user= User.new(user_params)
    if user.valid?
      user.save
      session[:user_id] = user.id
      redirect_to user
    else
      redirect_to new_user_path
    end
  end

  def new
    @user = User.new
  end

  def show
    # if session[:user_id] == params[:id].to_i
    #   @user = User.find(session[:user_id])
    # else
    #   redirect_to "/users/#{session[:user_id]}"
    # end
    @most_hated = Post.most_hated_post
  end

  def edit
  end

  def update
     @user.update(user_params)
      redirect_to user_path(session[:user_id])
  end

  def chosen_user
    @user = User.friendly.find(params[:id])
  end

 

  private
    def user_params
      params.require(:user).permit(:name, :username, :bio, :password, :password_confirmation)
    end

end
