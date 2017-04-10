class SayController < ApplicationController
  def index
    render text: 'What do you want me to say?'
  end

  def hello_joe
    render text: 'Saying Hello Joe!'
  end

  def hello_michael
    redirect_to :say_hello_joe
  end
end
