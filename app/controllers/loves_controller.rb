class LovesController < ApplicationController
  before_action do
    @love = Love.new
  end

  def index
    @love
  end

  def create
    @calculate = @love.calculate(params[:])
  end
end
