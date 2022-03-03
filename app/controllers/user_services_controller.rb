class UserServicesController < ApplicationController
  def index
    @user_services = UserService.all
  end

  def show
    find_user_service
  end

  def new
    @user_service = UserService.new
    @service = Service.find(params[:service_id])
  end

  def create
    @user_service = UserService.new(user_service_params)
    @user_service.user = current_user
    @service = Service.find(params[:service_id])
    @user_service.service = @service
    if @user_service.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def find_user_service
    @user_service = UserService.find(params[:id])
  end

  def user_service_params
    params.require(:user_service).permit(:start_date, :price_per_month, :hour_spent_per_month, :genre)
  end
end
