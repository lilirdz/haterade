class UsersController < ApplicationController

  before_action :current_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def current_user
    @user = User.friendly.find(params[:id])
  end

  def show
    
  end

  def edit
  end

  def update
    byebug
      if @user.update(user_params)
        flash[:success] = "Object was successfully updated"
        redirect_to @user
      else
        flash[:error] = "Something went wrong"
        redirect_to edit_user_path(@user)
      end
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :username, :bio)
    end

end
