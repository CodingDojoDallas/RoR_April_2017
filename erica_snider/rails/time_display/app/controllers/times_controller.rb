class TimesController < ApplicationController
  def main
    @time = Time.zone.now
    render :main
  end
end
