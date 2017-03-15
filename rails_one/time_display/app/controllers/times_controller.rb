class TimesController < ApplicationController
  def main
    time = Time.now.localtime
    @date = time.strftime("%b %d, %Y")
    @time = time.strftime("%I:%M %p")
    render "main"
  end
end
