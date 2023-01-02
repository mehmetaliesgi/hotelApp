class CompaniesController < ApplicationController
  layout "admin"
  before_action :authenticate_user!

  def index
    @companies = Company.all
  end

  def new
    @contact = Company.new    
  end

  def create
    @contact = Company.new(company_params)
    if @contact.save
      redirect_to admin_dashboard_path
    else
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(:address, :phone, :email, :website, :location_x, :location_y)
  end


end
