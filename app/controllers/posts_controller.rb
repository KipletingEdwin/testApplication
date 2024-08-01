class PostsController < ApplicationController


  # GET /posts or /posts.json
  def index
    post = Post.all
    render json: post, status: :ok
  end

  # GET /posts/1 or /posts/1.json
  def show
    post = find_post
    render json: post
  end

  def create
    post = Post.create(post_params)
    render json: post, status: :created
  end

  def update
    post = find_post
    post.update(post_params)
    render json: post, status: :ok
  end

  def destroy
    post = find_post
    post.destroy
    head :no_content
  end



  private
    def find_post
      Post.find(params[:id])
    end


    def post_params
      params.require(:post).permit(:title, :description)
    end
end
