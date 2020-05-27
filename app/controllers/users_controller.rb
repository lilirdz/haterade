class UsersController < ApplicationController

  before_action :current_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def create
    user= User.new(user_params)
    if user.valid?
      user.save
      session[:user_id] = user.id
      redirect_to user
    else
      resources new_user_path
    end
  end

  def show
    
  end

  def edit
  end

  def update
     @user.update(user_params)
      redirect_to user_path(session[:user_id])
  end

  def current_user
    # byebug
    if session[:user_id]
      @user = User.friendly.find(params[:id])
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :username, :bio, :password, :password_confirmation)
    end

end
