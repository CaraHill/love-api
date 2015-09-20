class LoversController < ApplicationController
  before_action do
    @lover = Lover.new
  end

  def index

  end

  def create
    lover_name = params[:love_name]
    your_name = params[:your_name]
    @calculate = @lover.calculate(lover_name, your_name)
    @sentiment = @lover.sentiment(lover_name, your_name)
    render :new
  end

end
