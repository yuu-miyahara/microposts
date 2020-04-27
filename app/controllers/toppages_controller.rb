class ToppagesController < ApplicationController
  
  include SessionsHelper
  
  def index
    if logged_in?
      @micropost = current_user.microposts.build  # form_with 用
      @microposts = current_user.microposts.order(id: :desc).page(params[:page])
    end
  end
end
