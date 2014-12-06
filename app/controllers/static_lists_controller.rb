class StaticListsController < ApplicationController
  def IMDBtop250
  	@list = Top250.all
  end

  def RTtop100
  	@list = RtTop100.all
  end
end
