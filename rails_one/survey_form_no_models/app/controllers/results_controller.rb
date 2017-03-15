class ResultsController < ApplicationController
  def main
    @locations = ["Chicago", "NYC", "LA"]
    @languages = ["Ruby", "Python", "JS"]
    render "main"
  end

  def result
    unless session[:number]
      session[:number] = 0
    end
    session[:number] +=1
    flash[:message] = "Thanks! You've submitted the form #{session[:number]} times!"
    @result = params[:result]
    render "result"
  end
end
