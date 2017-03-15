class UsersController < ApplicationController
  def home
    if session[:user]
      redirect_to '/books'
    end
  end

  def login
    @user = User.where("username = ?", [params[:username]])
    if @user.empty?
      @user = User.create(username: params[:username])
      if @user.valid?
        session[:username] = @user.username
        session[:id] = @user.id
        redirect_to '/books'
      else
        flash[:error] = "Must enter a username"
        redirect_to '/'
      end
    else
      session[:username] = @user[0].username
      session[:id] = @user[0].id
      redirect_to '/books'
    end
  end

  def logout
    session.clear
    redirect_to '/'
  end

  def show
  end
end
