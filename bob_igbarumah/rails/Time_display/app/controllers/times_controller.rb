class TimesController < ApplicationController
  def main
    #times = DateTime.now()
    t  = Time.zone.now
    @date = t.strftime("%B %d, %Y")
    @time = t.strftime("%l:%M %p")

  end
end
