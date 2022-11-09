class ServicesController < ApplicationController
  layout "admin"

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to services_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def service_params
    params.require(:service).permit(:name, :description, :icon)
  end

end
