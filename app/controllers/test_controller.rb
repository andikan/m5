class TestController < ApplicationController
  def spot
  	@spots = Spot.all
  end
end
