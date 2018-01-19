class PostsController < ApplicationController
  before_action :logged_in_user, only: [:create]
  
  def index
    @post = Post.new
    @posts = Post.paginate(:page => params[:page], :per_page => 4).order('created_at DESC')
  end

  def create
    user = User.find_by(id: session[:user_id])
    @post = user.posts.build(post_params)
    if @post.save
      flash[:success] = "Your post has been created."
      redirect_to root_url
    else
      flash[:danger] = "Error! Your post has not been created."
      redirect_to root_url
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  # Before filters

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
