class AdminController < ApplicationController
  layout "admin"

  def index

  end
    
  def room
    @rooms = Room.all
  end

  def add_room
    @room = Room.new
  end

  def create_room
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def room_params
    params.require(:room).permit(:number, :capacity, :price, :description, :status, photos: [])
  end

end
