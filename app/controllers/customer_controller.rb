class CustomerController < ApplicationController
  layout 'customer'
  def index

  end

  def rooms
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

end


private

def room_params
  params.require(:room).permit(:number, :capacity, :price, :description, :status, photos: [], service_ids: [])
end