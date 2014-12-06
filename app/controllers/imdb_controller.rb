class ImdbController < ApplicationController
  def top250
  	@list = Top250.all
  end
end
