class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  # def show
  #   find_service
  #   @user_services = User_service.new
  # end

private

  def find_service
    @service = Service.find(params[:id])
  end

  def costume_params
    params.require(:service).permit(:name, :photo_url)
  end
end
