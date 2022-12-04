class AdminController < ApplicationController
  layout "admin"

  def index
    @rooms = Room.all
  end

end
