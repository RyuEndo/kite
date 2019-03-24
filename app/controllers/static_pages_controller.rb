class StaticPagesController < ApplicationController
  # skip_before_action :require_login

  def home
    if current_store
    @store=current_store
    @current_post=Post.where(store_id: current_store.id)
    end

    scope = Post
    scope = scope.where(date: params[:date]) if params[:date]
    scope = scope.where(money: params[:money]) if params[:money]
    @post = scope.order(updated_at: :desc)
  end
  
  def detail
    if current_store
    @store=current_store
    elsif current_user
    @user=current_user
    end
  end 
end
