class CustomerController < ApplicationController
  layout 'customer'
  def index
    @rooms = Room.all
  end

  def rooms
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def contact
    @room = Room.all
  end

end


private

