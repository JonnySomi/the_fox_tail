class UserServicesController < ApplicationController
  def new
    @user_service = UserService.new
    @service = Service.find(params[:service_id])
  end

  def create
    @user_service = UserService.new(user_service_params)
    @user_service.user = current_user
    @service = Service.find(params[:service_id])
    @user_service.service = @service
      return unless @user_service.save
      redirect_to dashboard_path
      #render :new
  end

  private

  def find_user_service
    @user_service = UserService.find(params[:id])
  end

  def user_service_params
    params.require(:user_service).permit(:api_key, :category, :start_date, :price_per_month, :hour_spent_per_month, :genre)
  end
end
