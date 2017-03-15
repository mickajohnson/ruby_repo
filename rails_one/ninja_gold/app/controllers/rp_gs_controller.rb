class RpGsController < ApplicationController
  def main
    unless session[:gold]
      session[:gold] = 0
      session[:log] = []
    end
    @locations = [{:location => "farm", :amount => "(earns 10-20 gold)"}, {:location => "cave", :amount => "(earns 5-10 gold)"}, {:location => "house", :amount => "(earns 2-5 gold)"}, {:location => "casino", :amount => "(earns/takes 0-50 gold)"}]
    render 'main'
  end

  def farm
    found = rand(10..20)
    session[:log] << "Earned #{found} gold from the farm (#{Time.now.strftime('%B %d, %Y %I:%M %p')})"
    session[:gold] += found
    redirect_to '/'
  end

  def cave
    found = rand(5..10)
    session[:log] << "Earned #{found} gold from the cave (#{Time.now.strftime('%B %d, %Y %I:%M %p')})"
    session[:gold] += found
    redirect_to '/'
  end

  def house
    found = rand(2..5)
    session[:log] << "Earned #{found} gold from the house (#{Time.now.strftime('%B %d, %Y %I:%M %p')})"
    session[:gold] += found
    redirect_to '/'
  end

  def casino
    found = rand(-50..50)
    if found > -1
      session[:log] << "Earned #{found} gold from the casino (#{Time.now.strftime('%B %d, %Y %I:%M %p')})"
      session[:gold] += found
    else
      found *= -1
      session[:log] << "Entered a casino and lost #{found} gold...ouch... (#{Time.now.strftime('%B %d, %Y %I:%M %p')})"
      session[:gold] -= found
    end
    redirect_to '/'
  end

  def reset
    session.clear
    redirect_to '/'
  end
end
