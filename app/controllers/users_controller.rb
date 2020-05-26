class UsersController < ApplicationController

  before_action :current_user, only: [:show, :edit]

  def index
    @users = User.all
  end

  def current_user
    @user = User.find(params[:id])
  end

  def show

  end

  def edit

  end

end
