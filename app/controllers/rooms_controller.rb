class RoomsController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
   
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    params["room"].delete("photos") if params["room"]["photos"] == [""]
  
    @room = Room.find(params[:id])
    
    if @room.update(room_params)
      redirect_to rooms_path
    else
      render :edit
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    redirect_to rooms_path
  end

  private

  def room_params
    params.require(:room).permit(:number, :capacity, :price, :description, :status, :room_size, :bed_count, photos: [], service_ids: [])
  end

end
