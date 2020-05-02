class FavolitesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:favolite_id])
    current_user.favolite(micropost)
    flash[:success] = "お気に入りに登録しました"
    redirect_to current_user
  end

  def destroy
    micropost = Micropost.find(params[:favolite_id])
    current_user.release_favolite(micropost)
    flash[:danger] = "お気に入りを解除しました"
    redirect_to current_user
  end
end
