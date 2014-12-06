class StaticListsController < ApplicationController
  def IMDBtop250
  	@list = Top250.all
  end
end
