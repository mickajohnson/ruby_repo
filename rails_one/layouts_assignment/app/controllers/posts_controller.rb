class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
  end

  def create
    Post.create(title: params[:title], content: params[:content], user: User.find(params[:user]))
    redirect_to '/posts'
  end
end
