class PostsController < ApplicationController
  before_action :only_store, only: [:create, :destroy,:new]
  def new
    @post=Post.new
    @store=current_store
  end
  
  def edit
    @post=Post.find_by(id: params[:id])
  end
  
  def show
    @post=Post.find_by(id: params[:id])
  end
  

  def create
    @store=current_store
    @post = @store.posts.new(post_params)

    if @post.save
      flash[:success] = "募集を作成しました"
      redirect_to "/"
    else
      render 'new'
    end
  end
  
  def update
    @store=current_store
    @post = @store.posts.new(post_params)

    if @post.save
      flash[:success] = "募集を作成しました"
      redirect_to "/"
    else
      render 'new'
    end
  end

  def destroy
  end
  
  def resp
   @post=Post.find_by(id: params[:id])
   @resp= Response.new(store_id: @post.store_id ,user_id: current_user.id, post_id: @post.id)
   
   if @resp.save
      flash[:success] = "この募集に応募しました"
      redirect_to "/"
   else
      render 'show'
   end
  end
  
  def info
    @res=Response.where(store_id: current_store.id)
    
  end

  private

    def post_params
      params.require(:post).permit(:content,:money,:people,:date)
    end
end
