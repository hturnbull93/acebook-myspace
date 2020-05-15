class Api::V1::PostsController < ApplicationController

  before_action :set_post, only: [:show, :update, :destroy]

  def create
    begin
      @post = Post.create(
        message: params[:message],
        user_id: params[:user_id]
      )
      render json: {
        post: @post, 
        location: api_v1_post_url(@post),
        status: :created
      }
    rescue
      render json: {
        status: 500
      }
    end
  end

  # def update
  #   @post = Post.find(params[:id])
  #   if @post.update(post_params)
  #     render json: @posts
  #   else
  #     render json: @post.errors, status: :unprocessable_entry
  #   end
  # end

  def index
    @posts = Post.all
    render json: {
      status: 200,
      posts: @posts
    }
  end

  # def show
  #   render json: @post
  # end
  
  # def destroy
  #   @post.destroy
  # end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:message, :user_id)
  end
end
