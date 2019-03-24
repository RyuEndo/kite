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
   @resp= Response.new(resp_params)
  end

  private

    def post_params
      params.require(:post).permit(:content,:money,:people,:date)
    end
end
