class ResultsController < ApplicationController
  def main
    @locations = ["Chicago", "NYC", "LA"]
    @languages = ["Ruby", "Python", "JS"]
    render "main"
  end

  def create
    @result = Result.create( result_params )
    unless @result.valid?
      flash[:errors] = @result.errors.full_messages
      redirect_to '/'
    else
      redirect_to '/result'
    end
  end

  def result
    unless session[:number]
      session[:number] = 0
    end
    session[:number] +=1
    flash[:message] = "Thanks! You've submitted the form #{session[:number]} times!"
    @result = Result.last
    render "result"
  end

  private
  def result_params
   params.require(:result).permit(:name, :location, :language, :comment)
  end
end
