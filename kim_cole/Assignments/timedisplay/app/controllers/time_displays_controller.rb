class TimeDisplaysController < ApplicationController
	def main
    #  Get the current date time and save it to a instance variable
    @time = Time.new
	end
end
