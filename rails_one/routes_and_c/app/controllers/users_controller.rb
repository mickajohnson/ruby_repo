class UsersController < ApplicationController
  def hello
    render :text => "Hello CodingDojo"
  end

  def say
    unless params[:name]
      render text: "Saying Hello"
    else
      if params[:name] == "michael"
        redirect_to "/say/hello/joe"
      else
        render :text => "Saying Hello #{params[:name]}"
      end
    end
  end

  def index
    render :text => "what do you want me to say?"
  end

  def counter
    if session[:number]
      session[:number] += 1
    else
      session[:number] = 1
    end
    render :text => "You've visited #{session[:number]} times"
  end

  def counter_reset
    session.clear
    render :text => "Destroyed the poor session"
  end
end
