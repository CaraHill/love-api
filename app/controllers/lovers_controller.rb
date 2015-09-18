class LoversController < ApplicationController
  before_action do
    @lover = Lover.new
  end

  def index
    @lover
  end

  def create
    @calculate = @lover.calculate(params[fname: love_name, sname: your_name])
    @sentiment = @lover.sentiment(params[to: love_name, from: your_name])
    redirect_to :new
  end
end
