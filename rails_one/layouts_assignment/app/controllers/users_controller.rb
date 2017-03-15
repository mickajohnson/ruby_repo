class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
  User.create(first_name: params[:first_name], last_name: params[:last_name], favorite_language: params[:favorite_language])
  redirect_to '/'
  end
end
