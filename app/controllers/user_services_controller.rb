class UserServicesController < ApplicationController
  def new
    @user_service = UserService.new
    @service = Service.find(params[:service_id])
  end

  def create
    @user_service = UserService.new(user_service_params)
    @user_service.user = current_user
    if @user_service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  private

  def find_user_service
    @user_service = UserService.find(params[:id])
  end

  def user_service_params
    params.require(:user_service).permit(:api_key, :category, :start_day, :price_per_month, :times_spent_per_month)
  end
end
