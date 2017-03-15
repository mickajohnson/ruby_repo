class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render '/users/new'
  end

  def create
    @user = User.create(name: params[:name])
    unless @user.valid?
      flash[:errors] = @user.errors.full_messages
      redirect_to '/users/new'
    else
      redirect_to '/users'
    end
  end

  def show
    if params[:id] == "total"
      render :text => "There are #{User.count} users"
    else
      render json: User.find(params[:id])
    end
  end

  def edit
    @user = User.find(params[:id])
    render '/users/edit'
  end

  def update
    @user = User.find(params[:id])
    @user.update(name: params[:name])
    unless @user.valid?
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/#{@user.id}/edit"
    else
      redirect_to '/users'
    end
  end

end
