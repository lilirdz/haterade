class DislikesController < ApplicationController
  def create
    @dislike = Dislike.create(user_id: session[:user_id], post_id: dislike_params[:post_id])

    redirect_to post_path(@dislike.post)
  end

  private 

    def dislike_params 
        params.permit(:post_id)
    end 
end
