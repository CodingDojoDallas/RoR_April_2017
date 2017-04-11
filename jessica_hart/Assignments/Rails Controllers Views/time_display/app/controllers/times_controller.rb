class TimesController < ApplicationController
  def main
    time = Time.now
    @date = time.strftime("%b %d, %Y")
    @clock = time.strftime("%I:%M %p")
  end
end

# Alternatively use one time variable @time and format in the views:
# <%= @time.strftime("%b %d, %Y") %>
# <%= @time.strftime("%I:%M %p") %>
