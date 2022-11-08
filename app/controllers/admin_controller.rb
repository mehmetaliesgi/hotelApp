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
      render :create_room
    end
  end

  def room_edit
    @room = Room.find(params[:id])
  end

  def room_update
    @room = Room.find(params[:id])
    
    if @room.update(room_params)
      redirect_to root_path
    else
      render :room_edit
    end
  end

  def room_destroy
    @room = Room.find(params[:id])
    @room.destroy

    redirect_to room_path
  end

  private

  def room_params
    params.require(:room).permit(:number, :capacity, :price, :description, :status, photos: [])
  end

end
